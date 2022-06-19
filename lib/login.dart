import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:professor/registration.dart';
import 'package:professor/test.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream:FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
        if(snapshot.hasData){
          return const Registration();
        }
        else{
          return const test();
        }
        });
  }
}
