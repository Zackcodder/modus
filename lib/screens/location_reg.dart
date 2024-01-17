import 'package:flutter/material.dart';
import 'package:modus/main.dart';

import 'clustters.dart';

class LocationRegistrationScreen extends StatefulWidget {
  final User user;

  const LocationRegistrationScreen({super.key, required this.user});

  @override
  State<LocationRegistrationScreen> createState() => _LocationRegistrationScreenState();
}

class _LocationRegistrationScreenState extends State<LocationRegistrationScreen> {
  late TextEditingController areaController;
  late TextEditingController radiusController;

  @override
  void initState() {
    super.initState();
    areaController = TextEditingController();
    radiusController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Location Registration'),

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/mile.png', fit: BoxFit.fitHeight,),),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Enter Local Mile radius', style: TextStyle(fontSize: 16, color: Colors.greenAccent),),

                ///local area name
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    controller: areaController,
                    decoration: const InputDecoration(hintText: 'Local Area',
                      border: InputBorder.none,),
                  ),
                ),
                ///mile radius
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    controller: radiusController,
                    decoration: const InputDecoration(hintText: 'Mile Radius',
                      border: InputBorder.none,),
                  ),
                ),
                //next button
                GestureDetector(
                  onTap: (){
                    LocalArea localArea = LocalArea(
                      name: areaController.text,
                      radius: 10.9,
                      // double.parse(radiusController.text),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClusterScreen(user: widget.user, localArea: localArea),
                      ),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 16),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('Login'),)),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
