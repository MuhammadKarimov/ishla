
import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';
import 'package:professor/qoshimcha/nazariymalumotqoshish.dart';
import 'package:professor/qoshimcha/table.dart';
class OquvIshlari extends StatefulWidget {
  const OquvIshlari({Key? key}) : super(key: key);
  @override
  State<OquvIshlari> createState() => _OquvIshlariState();
}
class _OquvIshlariState extends State<OquvIshlari> {
  void initstate(){
    super.initState();
  }
  List <String> sardor =['oquv ishlari','Sql','Rejada','Amalda'];
  List <String> muhammad =['sardor','asdasdas','asdasdasda','lalala0','lalalalq','sadasdas','ddfdfd','adsasas','erer'];
  List <String> beki =['sardor','asdasdas','asdasdasda'];
  List<String>items=['Malumotlar bazasi','Sql','Web dasturlash','Android dasturlash'];
  String ? selecteditem='1';
  final _mavzucontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O'quv ishlari",),
        centerTitle: true,
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
        // padding: EdgeInsets.all(15),
         children: [
           SizedBox(width: 10,),
           Column(
             children: [
               Text('Rejada',style:TextStyle(fontSize: 44),),
               SizedBox(width: 10,),
               ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NazariyMalumotQoshish()));
               },
                   child:Text("qo'shish"),
               ),
             ],
           ),
           Column(children: [
             Text('Amalda',style:TextStyle(fontSize: 44),),
             ElevatedButton(onPressed: (){
             },
               child:Text("qo'shish"),
             ),
               ],
             ),
           MyTable(title: 'Table',),
           ],),
       ),
     );

}
}
