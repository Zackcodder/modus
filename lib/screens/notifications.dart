import 'package:modus/main.dart';
import 'package:flutter/material.dart';

import 'business_list.dart';

class NotificationsScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  NotificationsScreen({required this.user, required this.localArea, required this.cluster});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Implement a notification system to keep users informed about local promotions, events, or updates
            const Text('Stay tuned for the latest updates and notifications'),
            const SizedBox(height: 16.0),
            Image.asset('assets/notification.png'),
            ElevatedButton(
              onPressed: () {

                Cluster cluster = Cluster(name: 'New Cluster');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BusinessListScreen(
                        user: user, localArea: localArea, cluster: cluster),
                  ),
                );
                // You might want to navigate to the home screen or any other screen here
                // Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
