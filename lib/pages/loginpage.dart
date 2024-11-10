import 'package:flutter/material.dart';
import 'package:firebase_login_page/service/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState(); 
}

class _LoginPageState extends State<LoginPage> {
  // firestore
  final FirestoreService firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],

        body:  SafeArea(
            child: Column(
                children: [
                    // welcom message
                    const SizedBox(height: 25),
                    const Text("Hello Again",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                    )
                    ),
                    const SizedBox(height: 10),
                    const Text("You've been missed!", 
                    style: TextStyle(
                        fontSize: 20,
                    )
                    ),

                    const SizedBox(height: 20),
                    // email text field
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                  )
                              ),
                            ),
                        ),
                    ),

                    const SizedBox(height: 20),
                    // password text field
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                  )
                              ),
                            ),
                        )
                    )
                ],
            )
        )
    );
  }
}