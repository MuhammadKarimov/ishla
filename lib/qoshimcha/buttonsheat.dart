import 'package:flutter/material.dart';

class ButtonSheat extends StatefulWidget {
  final String title;
  final VoidCallback onclickconfirm;
  final VoidCallback onclickclose;
  const ButtonSheat({Key? key,
    required this.title,
    required this.onclickconfirm,
    required this.onclickclose}) : super(key: key);

  @override
  State<ButtonSheat> createState() => _ButtonSheatState();
}
class _ButtonSheatState extends State<ButtonSheat> {

  @override
  Widget build(BuildContext context) =>Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
    body: ListView(
      children: [
        buildbutton(),

      ],


      ),

    );
  Widget buildbutton()=>Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      TextButton(onPressed: (){{widget.onclickclose;}},
          child: Text('Close'),
      style: TextButton.styleFrom(primary: Colors.red),
      ),
      ElevatedButton(onPressed: (){{widget.onclickconfirm;}},
          child: Text('Confirm'),
      style: ElevatedButton.styleFrom(primary: Colors.greenAccent),)
    ],
  );
  }

