import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';
class MyTable extends StatefulWidget {
  const MyTable({Key? key,required this.title}) : super(key: key);
 final String  title ;
  @override
  State<MyTable> createState() => _TableState();
}
class _TableState extends State<MyTable> {
  List <String> sardor =['Leksiya','Amaliyot','Bmi','jami'];
  List <String> muhammad =['Malumotlar bazasi','Rejada','Amalda'];
  List <String> beki =['sardor','asdasdas','asdasdasda'];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('salom'),
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
          child:LazyDataTable(
      rows: 3,
      columns: 4,
      tableDimensions: LazyDataTableDimensions(
        cellHeight: 50,
        cellWidth: 100,
        topHeaderHeight: 50,
        leftHeaderWidth: 75,
      ),
      topHeaderBuilder: (i) => Center(child: Text(sardor[i])),
      leftHeaderBuilder: (i) => Center(child: Text(muhammad[i])),
      dataCellBuilder: (i, j) => narsa(i, j),
      topLeftCornerWidget: Center(child: Text("Ish reja")),
    )));
    }
  Widget narsa(int qator,int ustun){
    if(qator==ustun){
      return Text('Bu diagonal');
    }else if(qator>ustun){
     return Text("BU tepa");
    }else {
      return Text('bu past');
    }

  }
}