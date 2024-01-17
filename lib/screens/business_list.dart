import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modus/main.dart';

import 'collaboration.dart';

class BusinessListScreen extends StatelessWidget {
  final User user;
  final LocalArea localArea;
  final Cluster cluster;

  const BusinessListScreen({super.key, required this.user, required this.localArea, required this.cluster});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Businesses'),
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
            child: Image.asset('assets/biz1.png', fit: BoxFit.cover,),),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,),
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 25, left: 10, right: 10),
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: const ListTile(
                  title: Text('Fashion'),
                  subtitle: Text('Deal in all type of fashions (Cloths, Shoes, Bags, Jewelries etc'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: const ListTile(
                  title: Text('Kitchen Accessories'),
                  subtitle: Text('Description for Business 2'),
                ),
              ),
              // Add more business items as needed
              ///Continue to collaboration screen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CollaborationScreen(user: user, localArea: localArea, cluster: cluster),
                    ),
                  );
                },
                child: Container(
                    margin:  const EdgeInsets.only(bottom: 10, top: 32, left: 10, right: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue to Collaboration',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
    //   Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Local Businesses'),
    //   ),
    //   body: ListView(
    //     children: [
    //       const ListTile(
    //         title: Text('Business 1'),
    //         subtitle: Text('Description for Business 1'),
    //       ),
    //       const ListTile(
    //         title: Text('Business 2'),
    //         subtitle: Text('Description for Business 2'),
    //       ),
    //       // Add more business items as needed
    //     ],
    //   ),
    // );
  }
}
