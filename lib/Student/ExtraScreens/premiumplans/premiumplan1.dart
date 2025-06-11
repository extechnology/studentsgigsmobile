import 'package:flutter/material.dart';

class DynamicPremiumPlan extends StatelessWidget {
  final Map<String, dynamic> planData;
  final bool isCurrentPlan;

  const DynamicPremiumPlan({
    Key? key,
    required this.planData,
    this.isCurrentPlan = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract plan data with fallbacks
    final planName = planData['name']?.toString() ?? 'Unknown Plan';
    final planPrice = planData['price']?.toString() ?? '0';
    final planDuration = planData['duration']?.toString() ??
        planData['validity']?.toString() ??
        '1 Month';
    final jobApplications = planData['job_applications']?.toString() ??
        planData['applications']?.toString() ??
        'Unlimited';
    final features = planData['features'] as List<dynamic>? ?? [];

    // Check if plan is expired
    final isExpired = _isPlanExpired();
    final isFree = _isFreePlan();

    // For free plans that are expired, don't show as current plan
    // This allows users to select free plan only once
    final shouldShowAsCurrent = isCurrentPlan && !(isFree && isExpired);

    // Determine plan color based on name or price
    Color planColor = Color(0xffEB8125);
    if (planName.toLowerCase().contains('premium')) {
      planColor = Color(0xff004673);
    } else if (planName.toLowerCase().contains('pro')) {
      planColor = Color(0xffc55a5f);
    }

    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Container(
        padding: EdgeInsets.only(top: 28),
        height: 500,
        decoration: BoxDecoration(
          color: planColor,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(19),
              bottomRight: Radius.circular(19),
            ),
          ),
          padding: EdgeInsets.only(right: 28, left: 28, top: 30, bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Plan Name and Current Badge
              Row(
                children: [
                  Expanded(
                    child: Text(
                      planName,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: planColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  if (shouldShowAsCurrent)
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: planColor.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Current",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff000000),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  // Show expired badge for expired plans
                  if (isExpired && isCurrentPlan)
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Expired",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff000000),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                ],
              ),

              // Price
              if (planPrice != '0')
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff004673),
                      ),
                    ),
                    Text(
                      "₹$planPrice",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff827AE1),
                      ),
                    ),
                  ],
                ),

              // Job Applications
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job Applications",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff004673),
                    ),
                  ),
                  Text(
                    jobApplications,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff827AE1),
                    ),
                  ),
                ],
              ),

              // Validity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Validity",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff004673),
                    ),
                  ),
                  Text(
                    planDuration,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff827AE1),
                    ),
                  ),
                ],
              ),

              // Dynamic Features
              ...buildFeatureRows(),

              // Action Button
              ElevatedButton(
                onPressed: shouldShowAsCurrent
                    ? null
                    : () {
                        // Handle plan selection/purchase
                        _handlePlanSelection(context);
                      },
                child: Text(
                  _getButtonText(shouldShowAsCurrent, isExpired, isFree),
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xffFFFFFF),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(218, 40),
                  backgroundColor:
                      shouldShowAsCurrent ? Colors.grey : planColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to check if plan is expired
  bool _isPlanExpired() {
    final expiredAt = planData['expired_at'] ??
        planData['expires_at'] ??
        planData['end_date'];
    final isExpired = planData['is_expired'] ?? planData['expired'] ?? false;
    final status = planData['status']?.toString().toLowerCase();

    if (isExpired == true) return true;
    if (status == 'expired' || status == 'inactive') return true;

    if (expiredAt != null) {
      try {
        final expiryDate = DateTime.parse(expiredAt.toString());
        return DateTime.now().isAfter(expiryDate);
      } catch (e) {
        // If parsing fails, check string patterns
        return false;
      }
    }

    return false;
  }

  // Helper method to check if plan is free
  bool _isFreePlan() {
    final planName = planData['name']?.toString().toLowerCase() ?? '';
    final planPrice = planData['price']?.toString() ?? '0';
    final planType = planData['type']?.toString().toLowerCase() ?? '';

    return planName.contains('free') ||
        planType.contains('free') ||
        planPrice == '0' ||
        planPrice == 'free';
  }

  // Helper method to get button text based on plan state
  String _getButtonText(bool shouldShowAsCurrent, bool isExpired, bool isFree) {
    if (shouldShowAsCurrent) {
      return "Current Plan";
    } else if (isExpired && isFree) {
      return "Already Used"; // Or "Expired" - customize as needed
    } else {
      return "Select Plan";
    }
  }

  List<Widget> buildFeatureRows() {
    // Common features to check for
    final commonFeatures = [
      {
        'key': 'profile_visibility',
        'name': 'Profile Visibility to Employers',
        'value': 'Basic'
      },
      {'key': 'resume_builder', 'name': 'Resume Builder'},
      {'key': 'job_alerts', 'name': 'Job Alerts & Notifications'},
      {'key': 'saved_jobs', 'name': 'Saved Jobs'},
      {
        'key': 'workplace_course',
        'name': 'Workplace Essentials Certified course'
      },
      {
        'key': 'priority_shortlisting',
        'name': 'Priority Shortlisting by Employers'
      },
      {'key': 'premium_badge', 'name': 'Premium Profile Badge'},
      {'key': 'live_chat', 'name': 'Live Chat With Employers'},
    ];

    List<Widget> featureRows = [];

    for (var feature in commonFeatures) {
      final featureKey = feature['key'] as String;
      final featureName = feature['name'] as String;
      final defaultValue = feature['value'] as String?;

      // Check if feature exists in plan data
      bool hasFeature = false;
      String? featureValue;

      // Check in different possible locations
      if (planData.containsKey(featureKey)) {
        hasFeature = planData[featureKey] == true || planData[featureKey] == 1;
        featureValue = planData[featureKey].toString();
      } else if (planData.containsKey('features') &&
          planData['features'] is List) {
        final features = planData['features'] as List;
        hasFeature = features.any((f) =>
            (f is String &&
                f.toLowerCase().contains(featureKey.toLowerCase())) ||
            (f is Map &&
                f['name']
                        ?.toString()
                        .toLowerCase()
                        .contains(featureName.toLowerCase()) ==
                    true));
      } else if (planData.containsKey('permissions') &&
          planData['permissions'] is Map) {
        hasFeature = planData['permissions'][featureKey] == true;
      }

      featureRows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                featureName,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Color(0xff004673),
                ),
              ),
            ),
            hasFeature
                ? (defaultValue != null
                    ? Text(
                        featureValue ?? defaultValue,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff827AE1),
                        ),
                      )
                    : Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ))
                : Icon(
                    Icons.not_interested_rounded,
                    color: Color(0xff827AE1),
                    size: 20,
                  ),
          ],
        ),
      );
    }

    return featureRows;
  }

  void _handlePlanSelection(BuildContext context) {
    final isFree = _isFreePlan();
    final isExpired = _isPlanExpired();

    // Check if it's an expired free plan
    if (isFree && isExpired) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Plan Not Available'),
            content: Text(
                'Free plan can only be used once. Please choose a premium plan.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    // Regular plan selection logic
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Plan'),
          content: Text('Do you want to select ${planData['name']} plan?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement plan selection/purchase API call
                Navigator.of(context).pop();
                // Add your plan selection logic here
              },
              child: Text('Confirm'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEB8125),
              ),
            ),
          ],
        );
      },
    );
  }
}
