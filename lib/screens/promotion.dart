import 'package:flutter/material.dart';
import 'package:modus/main.dart';
import 'package:modus/screens/sustainability.dart';

class PromotionScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  PromotionScreen({required this.user, required this.localArea, required this.cluster});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Promotions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Implement a section to showcase local promotions
            Text('Check out the latest promotions in ${localArea.name}'),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SustainabilityScreen(user: user, localArea: localArea, cluster: cluster),
                  ),
                );
              },
              child: const Text('Continue to Sustainability Information'),
            ),
          ],
        ),
      ),
    );
  }
}
