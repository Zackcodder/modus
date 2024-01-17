import 'package:modus/main.dart';
import 'package:flutter/material.dart';
import 'package:modus/screens/promotion.dart';

class CollaborationScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  const CollaborationScreen({super.key, required this.user, required this.localArea, required this.cluster});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collaboration Platform'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.pink,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 25),
                  child: Image.asset('assets/signup.png', fit: BoxFit.fill,),
                ),
                Text('Welcome to Cluster ${cluster.name}'),
                const SizedBox(height: 16.0),
                // Implement collaboration features between local businesses and customers
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PromotionScreen(user: user, localArea: localArea, cluster: cluster),
                      ),
                    );
                  },
                  child: const Text('Continue to Promotions'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
