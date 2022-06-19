import 'package:flutter/material.dart';
class IlmiyTadqiqot extends StatefulWidget {
  const IlmiyTadqiqot({Key? key}) : super(key: key);
  @override
  State<IlmiyTadqiqot> createState() => _IlmiyTadqiqotState();
}
class _IlmiyTadqiqotState extends State<IlmiyTadqiqot> {
  String saqla='';
  String sonmi='';
  List save =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    save.addAll(['salom','olam','gul']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
                ),
              ),
            onDismissed: (direction) {
            setState(() {
              save.removeAt(index);
            });
            //if(direction==DismissDirection.endToStart){
            },
          );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Element kiriting'),
              content: TextField(
                onChanged: (String value){
                  saqla=value;
                },
              ),
              actions: [
                TextField(
                  onChanged: (String son){
                    sonmi=son;
                  },
                ),
                TextField(
                  onChanged: (String son){
                    sonmi=son;
                  },
                ),
                TextField(
                  onChanged: (String son){
                    sonmi=son;
                  },
                ),
                TextField(
                  onChanged: (String son){
                    sonmi=son;
                  },
                ),
                TextField(
                  onChanged: (String son){
                    sonmi=son;
                  },
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    save.add(saqla);
                    save.add(sonmi);
                    Navigator.of(context).pop();
                  });
                }, child: Text('Qoshish'))
              ],
            );
          });
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),

    );
  }
}
