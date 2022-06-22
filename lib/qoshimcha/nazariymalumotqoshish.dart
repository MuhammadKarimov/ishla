import 'package:flutter/material.dart';
class NazariyMalumotQoshish extends StatefulWidget {

   NazariyMalumotQoshish({Key? key}) : super(key: key);
  @override
  State<NazariyMalumotQoshish> createState() => _NazariyMalumotQoshishState();
}

class _NazariyMalumotQoshishState extends State<NazariyMalumotQoshish> {
  List<String>items=['Malumotlar bazasi','Sql','Web dasturlash','Android dasturlash'];
  String ? selecteditem='1';
  final _mavzucontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Rejadagi malumotlarni qoshish'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: 300,
            height: 80,
            child: TextField(
              maxLength: 3,
              cursorColor: Colors.red,
              style: TextStyle(
              ),
              controller: _mavzucontroller,
              decoration: InputDecoration(
                hintMaxLines: 4,
                prefixIcon: Icon(Icons.add_circle_outline,color:Colors.yellowAccent,size: 14,),
                iconColor: Colors.yellowAccent,
                border: InputBorder.none,
                prefixIconColor: Colors.redAccent,
                hintText: 'Maruza soati',
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.grey,
                  fontSize: 16,
                ),
                labelText: 'Maruza',
                labelStyle: TextStyle(
                    fontSize: 16,
                    backgroundColor: Colors.white,
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
          Container(
            width: 300,
            height: 80,
            child: TextField(
              maxLength: 3,
              cursorColor: Colors.red,
              style: TextStyle(
                  backgroundColor: Colors.white30
              ),
              controller: _mavzucontroller,
              decoration: InputDecoration(
                hintMaxLines: 4,
                prefixIcon: Icon(Icons.login_outlined,size: 14,),
                iconColor: Colors.white,
                border: InputBorder.none,
                prefixIconColor: Colors.redAccent,
                hintText: 'soatlar',
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black26,
                  fontSize: 16,
                ),
                labelText: 'Amaliy+Lab',
                labelStyle: TextStyle(
                    fontSize: 16,
                    backgroundColor: Colors.white,
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
          Container(
            width: 300,
            height: 80,
            child: TextField(
              maxLength: 3,
              cursorColor: Colors.red,
              style: TextStyle(
                  backgroundColor: Colors.white30
              ),
              controller: _mavzucontroller,
              decoration: InputDecoration(
                hintMaxLines: 4,
                prefixIcon: Icon(Icons.bookmark_add_sharp,size: 14,),
                iconColor: Colors.greenAccent,
                border: InputBorder.none,
                prefixIconColor: Colors.redAccent,
                hintText: 'BMI',
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.grey,
                  fontSize: 16,
                ),
                labelText: 'BMI',
                labelStyle: TextStyle(
                    fontSize: 16,
                    backgroundColor: Colors.white,
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
          Container(
            width: 300,
            height: 80,
            child: TextField(
              maxLength: 33,
              cursorColor: Colors.red,
              style: TextStyle(
                  backgroundColor: Colors.white30
              ),
              controller: _mavzucontroller,
              decoration: InputDecoration(
                hintMaxLines: 4,
                prefixIcon: Icon(Icons.add_box_outlined,size: 14,),
                iconColor: Colors.black,
                border: InputBorder.none,
                prefixIconColor: Colors.redAccent,
                hintText: 'Fanni kiriting',
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black26,
                  fontSize: 16,
                ),
                labelText: 'Fanni kiriting',
                labelStyle: TextStyle(
                    fontSize: 16,
                    backgroundColor: Colors.white,
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
      ),
    );
  }
}
