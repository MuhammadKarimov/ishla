import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';
class Table extends StatefulWidget {
  const Table({Key? key,required this.title}) : super(key: key);
 final String  title ;
  @override
  State<Table> createState() => _TableState();
}
class _TableState extends State<Table> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('salom'),
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text('salom'),));}}