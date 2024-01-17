import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modus/main.dart';

import 'notifications.dart';

class UserProfileScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  const UserProfileScreen({super.key, required this.user, required this.localArea, required this.cluster});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationsScreen(user: user, localArea: localArea, cluster: cluster),
              ),
            );
          }, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Display user profile information, cluster details, and favorite local businesses
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.person, color: Colors.white, size: 40,),
              radius: 40,
            ),
            SizedBox(height: 16,),
            Text('User Profile: ${user.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Text('Local Area: ${localArea.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Text('Cluster: ${cluster.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
