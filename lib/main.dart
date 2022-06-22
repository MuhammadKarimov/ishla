import 'package:flutter/material.dart';
import 'package:professor/menubar.dart';
import 'package:professor/qoshimcha/adminpanel.dart';
import 'package:professor/qoshimcha/table.dart'as sardor;
import 'package:professor/qoshimcha/table.dart';
import 'package:professor/test.dart';
import 'registration.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Ish Reja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  test(),
    );
  }
}
