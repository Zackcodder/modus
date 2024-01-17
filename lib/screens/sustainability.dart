import 'package:modus/main.dart';
import 'package:flutter/material.dart';
import 'package:modus/screens/userprofile.dart';

class SustainabilityScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  SustainabilityScreen({required this.user, required this.localArea, required this.cluster});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainability Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Provide information about the sustainability benefits of choosing local services and products
            const Text('Choose local businesses for a sustainable community'),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfileScreen(user: user, localArea: localArea, cluster: cluster),
                  ),
                );
              },
              child: const Text('Continue to User Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
