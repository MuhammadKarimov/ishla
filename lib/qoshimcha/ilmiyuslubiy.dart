import 'package:flutter/material.dart';
class IlmiyUslubiy extends StatefulWidget {
  const IlmiyUslubiy({Key? key}) : super(key: key);

  @override
  State<IlmiyUslubiy> createState() => _IlmiyUslubiyState();
}

class _IlmiyUslubiyState extends State<IlmiyUslubiy> {
  List<String>itemlar=['1','2','3','4','5','6','7','8'];
  String ? selectitem='1';
  final _mavzucontrol =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ilmiy-Uslubiy'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // padding: EdgeInsets.all(15),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text('Nazariy qism'),
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
                                      controller: _mavzucontrol,
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
                                          onPressed: ()=>_mavzucontrol.clear(),
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
                                          items: itemlar
                                              .map((item) =>
                                              DropdownMenuItem<String>(value: item,
                                                  child: Text(item,style:TextStyle(fontSize: 20) ,)
                                              )).toList(),
                                          value: selectitem,
                                          onChanged: (item)=>setState(() =>selectitem=item),
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
                                            builder: (context)=>IlmiyUslubiy(),)
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

                  ],
                ),
                Column(children: [
                  Text('Amaliy ish'),
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
                                    controller: _mavzucontrol,
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
                                        onPressed: ()=>_mavzucontrol.clear(),
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
                                        items: itemlar
                                            .map((item) =>
                                            DropdownMenuItem<String>(value: item,
                                                child: Text(item,style:TextStyle(fontSize: 20) ,)
                                            )).toList(),
                                        value: selectitem,
                                        onChanged: (item)=>setState(() =>selectitem=item),
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
                                          builder: (context)=>IlmiyUslubiy(),)
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

        ],
      ),
    );
  }
}
