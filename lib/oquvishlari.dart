
import 'package:flutter/material.dart';
import 'package:professor/qoshimcha/buttonsheat.dart';
class OquvIshlari extends StatefulWidget {
  const OquvIshlari({Key? key}) : super(key: key);
  @override
  State<OquvIshlari> createState() => _OquvIshlariState();
}
class _OquvIshlariState extends State<OquvIshlari> {
  void initstate(){
    super.initState();
  }
  List<String>items=['1','2','3','4','5','6','7','8'];
  String ? selecteditem='1';
  final _mavzucontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O'quv ishlari",),
        centerTitle: true,
      ),
     //bottomSheet: ButtonSheat(
      // title: '',
       // onclickconfirm: () {},
      // onclickclose: (){},

    // ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        // padding: EdgeInsets.all(15),
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           SizedBox(width: 10,),
           Column(
             children: [
               Text('Rejada',style:TextStyle(fontSize: 44),),
               SizedBox(width: 10,),
               ElevatedButton(onPressed: (){
                 showModalBottomSheet(context: context,
                     builder: (context)=> Center(
                       child: ListView(
                         children: [
                           TextField(
                             maxLength: 3,
                             cursorColor: Colors.red,
                             style: TextStyle(
                                 backgroundColor: Colors.white30
                             ),
                             controller: _mavzucontroller,
                             decoration: InputDecoration(
                               hintMaxLines: 4,
                               prefixIcon: Icon(Icons.login_outlined,size: 14,),
                               iconColor: Colors.black,
                               border: InputBorder.none,
                               prefixIconColor: Colors.redAccent,
                               hintText: 'Amaliy',
                               filled: true,
                               fillColor: Colors.black12,
                               hintStyle: TextStyle(
                                 backgroundColor: Colors.white30,
                                 color: Colors.black26,
                                 fontSize: 16,
                               ),
                               labelText: '',
                               labelStyle: TextStyle(
                                   fontSize: 16,
                                   backgroundColor: Colors.black,
                                   color: Colors.lightBlue
                               ),
                               suffixIcon: IconButton(
                                 icon: Icon(Icons.close),color: Colors.red,
                                 onPressed: ()=>_mavzucontroller.clear(),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                               ),
                             ),
                             textInputAction: TextInputAction.done,
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Center(
                               child: SizedBox(
                                 width:240,
                                 child: DropdownButtonFormField<String>(
                                   decoration: InputDecoration(
                                     enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(12),
                                       borderSide: BorderSide(width: 3,color: Colors.blue)
                                     )
                                   ),
                                   items: items
                                     .map((item) =>
                                     DropdownMenuItem<String>(value: item,
                                         child: Text(item,style:TextStyle(fontSize: 20) ,)
                                     )).toList(),
                                     value: selecteditem,
                                   onChanged: (item)=>setState(() =>selecteditem=item),
                                      ),
                               ),
                             ),
                           ),
                           SizedBox(width: 30,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: RaisedButton(
                               color: Colors.blue,
                                 child: Text("Submit"),
                                 onPressed: (){
                                 Navigator.of(context).pop();
                                 }
                             ),
                           )

                         ],
                       )
                     ));
               },
                   child:Text("qo'shish"),
               ),

             ],
           ),
           Column(children: [
             Text('Amalda',style:TextStyle(fontSize: 14),),
             ElevatedButton(onPressed: (){
               showModalBottomSheet(context: context,
                   builder: (context)=> Center(
                       child: ListView(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextField(
                               maxLength: 99,
                               cursorColor: Colors.red,
                               style: TextStyle(
                                   backgroundColor: Colors.white30
                               ),
                               controller: _mavzucontroller,
                               decoration: InputDecoration(
                                 hintMaxLines: 4,
                                 prefixIcon: Icon(Icons.login_outlined,size: 22,),
                                 iconColor: Colors.black,
                                 border: InputBorder.none,
                                 prefixIconColor: Colors.redAccent,
                                 hintText: 'Mavzu kiriting',
                                 filled: true,
                                 fillColor: Colors.black12,
                                 hintStyle: TextStyle(
                                   backgroundColor: Colors.white30,
                                   color: Colors.black26,
                                   fontSize: 16,
                                 ),
                                 labelText: '',
                                 labelStyle: TextStyle(
                                     fontSize: 16,
                                     backgroundColor: Colors.black,
                                     color: Colors.lightBlue
                                 ),
                                 suffixIcon: IconButton(
                                   icon: Icon(Icons.close),color: Colors.red,
                                   onPressed: ()=>_mavzucontroller.clear(),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                               ),
                               textInputAction: TextInputAction.done,
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Center(
                               child: SizedBox(
                                 width:240,
                                 child: DropdownButtonFormField<String>(
                                   decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(12),
                                           borderSide: BorderSide(width: 3,color: Colors.blue)
                                       )
                                   ),
                                   items: items
                                       .map((item) =>
                                       DropdownMenuItem<String>(value: item,
                                           child: Text(item,style:TextStyle(fontSize: 20) ,)
                                       )).toList(),
                                   value: selecteditem,
                                   onChanged: (item)=>setState(() =>selecteditem=item),
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 30,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: RaisedButton(
                                 color: Colors.blue,
                                 child: Text("Submit"),
                                 onPressed: (){
                                   Navigator.of(context)
                                       .push(MaterialPageRoute(
                                     builder: (context)=>OquvIshlari(),)
                                   );
                                 }
                             ),
                           )
                         ],
                       )
                   ));
             },
               child:Text("qo'shish"),

             ),
           ],),
           SizedBox(width: 10,)


         ],
       ),
     ),
     /* floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (
            ){},
        backgroundColor: Colors.black,
        child: Icon(Icons.add,size: 20,),
      ),*/
    );
  }
}
