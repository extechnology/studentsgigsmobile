import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String id;
  final String jobType;
  final String position;
  final String timeAgo;
  final String salary;
  final String salaryType;
  final bool applied;
  final String logo;
  final String company;
  final String location;
  final String employerId;
  final bool saved;
  final bool isLoading;
  final Function() onSave;

  const JobCard({
    Key? key,
    required this.id,
    required this.jobType,
    required this.position,
    required this.timeAgo,
    required this.salary,
    required this.salaryType,
    required this.applied,
    required this.logo,
    required this.company,
    required this.location,
    required this.employerId,
    required this.saved,
    required this.isLoading,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "GigsDetailScreen");
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    position.toUpperCase(),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: isLoading ? null : onSave,
                    icon: isLoading
                        ? const CircularProgressIndicator()
                        : Icon(saved ? Icons.bookmark : Icons.bookmark_border, color: saved ? Colors.green : Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time, color: Colors.green, size: 16),
                  const SizedBox(width: 5),
                  Text(timeAgo, style: const TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text(jobType),
                    backgroundColor: Colors.green.shade50,
                    labelStyle: const TextStyle(color: Colors.green),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.currency_rupee, color: Colors.green, size: 16),
                      Text('$salary - $salaryType', style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                applied ? 'You have already applied ✓' : 'Not applied yet',
                style: TextStyle(color: applied ? Colors.green : Colors.grey),
              ),
              const Divider(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(logo),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/employerDetails/$employerId'),
                        child: Text(
                          company.toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on, color: Colors.grey, size: 16),
                          const SizedBox(width: 5),
                          Text(location, style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}