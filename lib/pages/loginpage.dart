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
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}