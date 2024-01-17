
import 'package:flutter/material.dart';

import '../main.dart';
import 'location_reg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController nameController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/signup1.png', fit: BoxFit.fitHeight,),),
          Container(
            height: MediaQuery.of(context).size.height,
          color: Colors.black12,),
          ///body
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Signup to Connect to local Business', style: TextStyle(fontSize: 16, color: Colors.greenAccent),),
                ///user name
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(hintText: 'Full name',
                      border: InputBorder.none,),
                  ),
                ),
                ///email
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: '@Email',
                      border: InputBorder.none,),
                  ),
                ),
                ///signup button
                GestureDetector(
                  onTap: (){
                    User user = User(
                      name: nameController.text,
                      email: emailController.text,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationRegistrationScreen(user: user),
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
                      child: const Center(child: Text('SignUp'),)),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
