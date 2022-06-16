import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class IlmiyTadqiqot extends StatefulWidget {
  const IlmiyTadqiqot({Key? key}) : super(key: key);

  @override
  State<IlmiyTadqiqot> createState() => _IlmiyTadqiqotState();
}

class _IlmiyTadqiqotState extends State<IlmiyTadqiqot> {
  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  final saqla = TextEditingController();
  List save =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initFirebase();
    save.addAll(['salom','olam','gul']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Ilmiy-tadqiqot'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: save.length,
          itemBuilder: (BuildContext context, int index ){
          return  Dismissible(key: Key(save[index]),
              child:Card(
                child: ListTile(
                  title: Text(save[index]),
                  trailing: Column(
                    children: [
                      Text('Nazariy qism',style: TextStyle(
                        fontSize: 25,color: Colors.black
                      ),),


                    ],
                  ),
                ),
              ),
            onDismissed: (direction){
            //if(direction==DismissDirection.endToStart){
            },
          );
          }
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: (){},
      ),

    );
  }
}
