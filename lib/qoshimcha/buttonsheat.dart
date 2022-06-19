import 'package:flutter/material.dart';
class Buttonsheat extends StatefulWidget {
  const Buttonsheat({Key? key}) : super(key: key);

  @override
  State<Buttonsheat> createState() => _ButtonsheatState();
}

class _ButtonsheatState extends State<Buttonsheat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: [
          DataColumn(label: Text('salom'),),
          DataColumn(label: Text("olam")),
        ],
        rows: const [
          DataRow(cells:[
            DataCell(Text('2018'),
            ),
          ]),
        ],
      ),
    );
  }
}
