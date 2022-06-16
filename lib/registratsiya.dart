import 'package:flutter/material.dart';

class registratsiya extends StatefulWidget {
  const registratsiya({Key? key}) : super(key: key);

  @override
  State<registratsiya> createState() => _registratsiyaState();
}

class _registratsiyaState extends State<registratsiya> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Image.asset('asset/kitob.png'),
      TextField(
        decoration: InputDecoration(
          labelText: 'Login',
          prefixIcon: Icon(Icons.login),
        ),
      ),
    ]);
  }
}
