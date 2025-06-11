import 'package:flutter/material.dart';
import 'package:gigs/Student/ExtraScreens/premiumplans/premiumplan1.dart';
import 'package:gigs/Student/StudentFunctions/HomePage/premiumfeatch.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PremiumScreen extends StatefulWidget {
  PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  final controller = PageController(initialPage: 0);
  late Future<List<dynamic>> _plansFuture;

  @override
  void initState() {
    super.initState();
    _plansFuture = fetchUserPremiumPlans();
  }

  // Helper method to find current plan from the plans list
  String _getCurrentPlanName(List<dynamic> plans) {
    for (var plan in plans) {
      // Check various fields that might indicate current/active plan
      final isActive = plan['is_active'] == true ||
          plan['active'] == true ||
          plan['status']?.toString().toLowerCase() == 'active' ||
          plan['is_current'] == true ||
          plan['current'] == true;

      final isExpired = _isPlanExpired(plan);
      final isFree = _isFreePlan(plan);

      // If it's active and not an expired free plan, it's current
      if (isActive && !(isFree && isExpired)) {
        return plan['name']?.toString() ?? 'Current Plan';
      }
    }

    // If no active plan found, look for the most recent non-expired plan
    for (var plan in plans) {
      if (!_isPlanExpired(plan)) {
        return plan['name']?.toString() ?? 'Available Plan';
      }
    }

    // Default fallback
    return 'No Active Plan';
  }

  // Helper method to get current plan index for PageView
  int _getCurrentPlanIndex(List<dynamic> plans) {
    for (int i = 0; i < plans.length; i++) {
      final plan = plans[i];
      final isActive = plan['is_active'] == true ||
          plan['active'] == true ||
          plan['status']?.toString().toLowerCase() == 'active' ||
          plan['is_current'] == true ||
          plan['current'] == true;

      final isExpired = _isPlanExpired(plan);
      final isFree = _isFreePlan(plan);

      if (isActive && !(isFree && isExpired)) {
        return i;
      }
    }
    return -1; // No current plan found
  }

  // Helper method to check if plan is expired
  bool _isPlanExpired(Map<String, dynamic> plan) {
    final expiredAt =
        plan['expired_at'] ?? plan['expires_at'] ?? plan['end_date'];
    final isExpired = plan['is_expired'] ?? plan['expired'] ?? false;
    final status = plan['status']?.toString().toLowerCase();

    if (isExpired == true) return true;
    if (status == 'expired' || status == 'inactive') return true;

    if (expiredAt != null) {
      try {
        final expiryDate = DateTime.parse(expiredAt.toString());
        return DateTime.now().isAfter(expiryDate);
      } catch (e) {
        return false;
      }
    }

    return false;
  }

  // Helper method to check if plan is free
  bool _isFreePlan(Map<String, dynamic> plan) {
    final planName = plan['name']?.toString().toLowerCase() ?? '';
    final planPrice = plan['price']?.toString() ?? '0';
    final planType = plan['type']?.toString().toLowerCase() ?? '';

    return planName.contains('free') ||
        planType.contains('free') ||
        planPrice == '0' ||
        planPrice == 'free';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: Color(0xffF9F2ED),
        leading: Container(
          margin: EdgeInsets.only(left: 7, top: 10),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE3E3E3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffEB8125),
                      Color(0xffc55a5f),
                      Color(0xff004673)
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "Unlock Your Full Potential With Premium",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Access exclusive job opportunities, build your resume, and \nstand out to top employers",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      height: 2),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  color: Colors.white70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        "Current Plan:",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Dynamic current plan name
                      FutureBuilder<List<dynamic>>(
                        future: _plansFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return SizedBox(
                              width: 60,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.grey[300],
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xffEB8125),
                                ),
                              ),
                            );
                          }

                          if (snapshot.hasError ||
                              !snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return Text(
                              "No Plan",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            );
                          }

                          final currentPlanName =
                              _getCurrentPlanName(snapshot.data!);
                          return Expanded(
                            child: Text(
                              currentPlanName,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff004673),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Dynamic PageView with FutureBuilder
              SizedBox(
                width: double.infinity,
                height: 500,
                child: FutureBuilder<List<dynamic>>(
                  future: _plansFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Color(0xffEB8125),
                        ),
                      );
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error, size: 50, color: Colors.red),
                            SizedBox(height: 10),
                            Text(
                              'Error loading plans',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${snapshot.error}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _plansFuture = fetchUserPremiumPlans();
                                });
                              },
                              child: Text('Retry'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffEB8125),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.inbox, size: 50, color: Colors.grey),
                            SizedBox(height: 10),
                            Text(
                              'No plans available',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    final plans = snapshot.data!;
                    final currentPlanIndex = _getCurrentPlanIndex(plans);

                    return PageView.builder(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: plans.length,
                      itemBuilder: (context, index) {
                        final plan = plans[index];
                        final isCurrentPlan = (currentPlanIndex != -1)
                            ? index == currentPlanIndex
                            : index == 0; // fallback to first plan

                        return DynamicPremiumPlan(
                          planData: plan,
                          isCurrentPlan: isCurrentPlan,
                        );
                      },
                    );
                  },
                ),
              ),

              SizedBox(height: 20),

              // Dynamic Page Indicator
              FutureBuilder<List<dynamic>>(
                future: _plansFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return SmoothPageIndicator(
                      controller: controller,
                      count: snapshot.data!.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xffEB8125),
                        dotColor: Colors.grey.shade400,
                        dotHeight: 8,
                        dotWidth: 8,
                        expansionFactor: 3,
                      ),
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
