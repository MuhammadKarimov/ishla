import 'package:flutter/material.dart';
import 'menubar.dart';
class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  State<Registration> createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Text('Ish reja'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('YIllik Ish reja'),
      ),
    );
  }
}
