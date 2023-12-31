// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auth/components/Mybotton.dart';
import 'package:auth/components/contentbox.dart';
import 'package:auth/components/sqaurebox.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //icon
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.lock,
                    size: 150,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //text
                Text("Welcome back You'/ve been missed"),
                SizedBox(
                  height: 10,
                ),
                //email
                ContentBox(
                  controller: emailcontroller,
                  obsecure: false,
                  hinttext: "Email/Phone..",
                  Icons: Icon(Icons.mail),
                ),

                //password
                ContentBox(
                  controller: passwordcontroller,
                  obsecure: true,
                  hinttext: "Password",
                  Icons: Icon(Icons.lock),
                ),

                //forgot password
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text("Forgot Password?"))
                    ],
                  ),
                ),

                //sign in
                MyBotton(),

                //or continue with
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 5,
                      color: Colors.grey.shade400,
                    )),
                    Text("or continue with"),
                    Expanded(
                        child: Divider(
                      thickness: 5,
                      color: Colors.grey.shade400,
                    )),
                  ],
                ),

                //google+apple
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Squarebox(imagepath: "lib/image/google.png"),
                    Squarebox(imagepath: "lib/image/Apple-logo.png")
                  ],
                )

                //Not a member sign in
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    TextButton(onPressed: () {}, child: Text("Register Now"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
