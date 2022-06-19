import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:professor/menubar.dart';
import 'package:professor/registration.dart';
import 'main.dart';
// ignore: camel_case_types
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);
  State<test> createState() => _testState();
}
// ignore: camel_case_types
class _testState extends State<test> {
  final logincontroller = TextEditingController();
  bool _secure = true;
  List loginparol =[];
  final _textEditingController = TextEditingController();
  void dispose() {
    logincontroller.dispose();
    _textEditingController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
                child: ListView(
                  padding: EdgeInsets.all(32),
                  children: [
                    Container(width: 200,
                        height: 200,
                        child:
                        Image.asset('asset/kitob.png')),
                    SizedBox(height: 20,),
                    login(),
                    SizedBox(height: 20,),
                    password(),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: RaisedButton(color: Colors.redAccent,
                            hoverColor: Colors.green,
                            child: Text('Submit'),
                            onPressed: () {
                          print(logincontroller);
                          print(_textEditingController);
                             Navigator.of(context)
                                  .push(MaterialPageRoute(
                                  builder: (context) => Registration()));
                            }
                        ),
                      ),
                    )
                  ],
                )
            ),
          )
      );

  Widget login() =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 32,
          cursorColor: Colors.red,
          style: TextStyle(
              backgroundColor: Colors.white30
          ),
          controller: logincontroller,
          decoration: InputDecoration(
            hintMaxLines: 1,
            prefixIcon: Icon(Icons.login_outlined, size: 22,),
            iconColor: Colors.black,
            border: InputBorder.none,
            prefixIconColor: Colors.redAccent,
            hintText: 'Login kiriting',
            filled: true,
            fillColor: Colors.white12,
            hintStyle: TextStyle(
              backgroundColor: Colors.white30,
              color: Colors.black26,
              fontSize: 18,
            ),
            labelText: 'Login',
            labelStyle: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.white10,
                color: Colors.lightBlue
            ),
            suffixIcon: logincontroller.text.isEmpty ? Icon(
                Icons.account_balance) : IconButton(
              icon: Icon(Icons.close), color: Colors.red,
              onPressed: () => logincontroller.clear(),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textInputAction: TextInputAction.done,
        ),
      );

  Widget password() =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 22,
          cursorColor: Colors.red,
          style: TextStyle(
              backgroundColor: Colors.white30
          ),
          controller: _textEditingController,
          decoration: InputDecoration(
            hintMaxLines: 1,
            errorText: null,
            prefixIcon: Icon(Icons.password_outlined, size: 22,),
            iconColor: Colors.black,
            border: InputBorder.none,
            prefixIconColor: Colors.redAccent,
            hintText: 'Parol kiriting',
            filled: true,
            fillColor: Colors.white12,
            hintStyle: TextStyle(
              backgroundColor: Colors.white30,
              color: Colors.black26,
              fontSize: 18,
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.white10,
                color: Colors.lightBlue
            ),
            suffixIcon: IconButton(
              icon: Icon(
                  _secure ? Icons.remove_red_eye : Icons.remove_red_eye_outlined
              ),
              onPressed: () {
                setState(() {
                  _secure = !_secure;
                });
              },
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textInputAction: TextInputAction.done,
          obscureText: _secure,
        ),
      );
}
