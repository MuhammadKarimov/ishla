import 'package:flutter/material.dart';
class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  String text ='';
  final firstname=TextEditingController();
  final lastname=TextEditingController();
  final loginadmin=TextEditingController();
  final passwordadmin=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Admin oynasi'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: 20,),
      Container(
        width: 250,
        height: 80,
        child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextField(
          controller: firstname,
          maxLength: 25,
          cursorColor: Colors.red,
          style: TextStyle(
              backgroundColor: Colors.white30
          ),
          decoration: InputDecoration(
            hintMaxLines: 4,
            border: InputBorder.none,
            hintText: 'First Name',
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            labelText: 'First name',
            labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.lightBlue
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.close),color: Colors.red,
              onPressed: ()=>firstname.clear(),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          textInputAction: TextInputAction.done,)),
      ),
          SizedBox(width: 20,),
          Container(width: 250,
            height: 80,
            child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  controller: lastname,
                  maxLength: 25,
                  cursorColor: Colors.red,
                  style: TextStyle(
                      backgroundColor: Colors.white30
                  ),
                  decoration: InputDecoration(
                    hintMaxLines: 4,
                    border: InputBorder.none,
                    hintText: '',
                    hintStyle: TextStyle(
                      fontSize: 16,
                    ),
                    labelText: 'Last name',
                    labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlue
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),color: Colors.red,
                      onPressed: ()=>lastname.clear(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  textInputAction: TextInputAction.done,)),
          ),
          SizedBox(width: 20,),
          Container(
            width: 250,
            height: 80,
            child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  controller: loginadmin,
                  maxLength: 25,
                  cursorColor: Colors.red,
                  style: TextStyle(
                      backgroundColor: Colors.white30
                  ),
                  decoration: InputDecoration(
                    hintMaxLines: 4,
                    border: InputBorder.none,
                    hintText: '',
                    hintStyle: TextStyle(
                      fontSize: 16,
                    ),
                    labelText: 'Login',
                    labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlue
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),color: Colors.red,
                      onPressed: ()=>loginadmin.clear(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  textInputAction: TextInputAction.done,)),
          ),
          SizedBox(width: 20,),
          Container(
            width: 250,
            height: 80,
            child: TextField(
              controller: passwordadmin,
              maxLength: 25,
              cursorColor: Colors.red,
              style: TextStyle(
                  backgroundColor: Colors.white30
              ),
              decoration: InputDecoration(
                hintMaxLines: 4,
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 16,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.lightBlue
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),color: Colors.red,
                  onPressed: ()=>passwordadmin.clear(),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 40,
            child: ElevatedButton(onPressed: (){
              setState(() {
                text = 'Ism: ${firstname.text}  familya: ${lastname.text}';

              });
            },
                child: Text('Saqlash'),),
          ),
          Text(text),
        ],

      ),
    );
  }
}
