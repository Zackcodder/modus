import 'package:modus/main.dart';
import 'package:flutter/material.dart';

import 'business_list.dart';

class ClusterScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;

  const ClusterScreen({super.key, required this.user, required this.localArea});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Join/Create Cluster'),
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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/biz.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///welcome note
                Text(
                  'Welcome, ${user.name}!',
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 150.0),

                ///hint header
                Text(
                  'Let\'s join or create a cluster in ${localArea.name}',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                ///join new cluster
                GestureDetector(
                  onTap: () {
                    Cluster cluster = Cluster(name: 'Cluster A');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessListScreen(
                            user: user, localArea: localArea, cluster: cluster),
                      ),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 32),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          'Join Existing Cluster',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                ///Create new cluster
                GestureDetector(
                  onTap: () {
                    Cluster cluster = Cluster(name: 'New Cluster');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessListScreen(
                            user: user, localArea: localArea, cluster: cluster),
                      ),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 32),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          'Create New Cluster',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
