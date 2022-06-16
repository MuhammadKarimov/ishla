import 'package:flutter/material.dart';
import 'package:professor/main.dart';
import 'package:professor/menubar.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final parol =TextEditingController();
  final newpassword=TextEditingController();
  final returnpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(maxRadius: 80,
                    child:ClipOval(
                      child: Image.asset('asset/kitob.png',
                      fit: BoxFit.cover,),
                    ),
                  ),
                ),
                paroll(),
                newparol(),
                qayta(),
                RaisedButton(child: Text('Saqlash'),
                    padding: EdgeInsets.all(10),
                    color: Colors.blue,
                    hoverColor: Colors.red  ,
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                          builder: (context)=>MyApp()));
                    }
                )
              ],
            ) ,
          ),


        ],
      ),
    );
  }
  Widget paroll()=> Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      maxLength: 22,
      cursorColor: Colors.red,
      style: TextStyle(
          backgroundColor: Colors.white30
      ),
      controller: parol,
      decoration: InputDecoration(
        hintMaxLines: 1,
        prefixIcon: Icon(Icons.admin_panel_settings_sharp,size: 22,),
        iconColor: Colors.black,
        border: InputBorder.none,
        prefixIconColor: Colors.redAccent,
        hintText: 'Eski parolni kiriting',
        filled: true,
        fillColor: Colors.white12,
        hintStyle: TextStyle(
          backgroundColor: Colors.white30,
          color: Colors.black26,
          fontSize: 16,
        ),
        labelText: 'Password',
        labelStyle: TextStyle(
            fontSize: 16,
            backgroundColor: Colors.white10,
            color: Colors.lightBlue
        ),
        suffixIcon:IconButton(
          icon: Icon(Icons.close),color: Colors.red,
          onPressed: ()=>parol.clear(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      textInputAction: TextInputAction.done,
    ),
  );
  Widget newparol()=> Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      maxLength: 22,
      cursorColor: Colors.red,
      style: TextStyle(
          backgroundColor: Colors.white30
      ),
      controller: newpassword,
      decoration: InputDecoration(
        hintMaxLines: 1,
        prefixIcon: Icon(Icons.admin_panel_settings_sharp,size: 22,),
        iconColor: Colors.black,
        border: InputBorder.none,
        prefixIconColor: Colors.redAccent,
        hintText: 'Yangi parolni kiriting',
        filled: true,
        fillColor: Colors.white12,
        hintStyle: TextStyle(
          backgroundColor: Colors.white30,
          color: Colors.black26,
          fontSize: 18,
        ),
        labelText: 'New Password',
        labelStyle: TextStyle(
            fontSize: 18,
            backgroundColor: Colors.white10,
            color: Colors.lightBlue
        ),
        suffixIcon:IconButton(
          icon: Icon(Icons.close),color: Colors.red,
          onPressed: ()=>newpassword.clear(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      textInputAction: TextInputAction.done,
    ),
  );
  Widget qayta()=> Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      maxLength: 22,
      cursorColor: Colors.red,
      style: TextStyle(
          backgroundColor: Colors.white30
      ),
      controller: returnpassword,
      decoration: InputDecoration(
        hintMaxLines: 1,
        prefixIcon: Icon(Icons.admin_panel_settings_sharp,size: 22,),
        iconColor: Colors.black,
        border: InputBorder.none,
        prefixIconColor: Colors.redAccent,
        hintText: 'Qayta parolni kiriting',
        filled: true,
        fillColor: Colors.white12,
        hintStyle: TextStyle(
          backgroundColor: Colors.white30,
          color: Colors.black26,
          fontSize: 16,
        ),
        labelText: ' Return Password',
        labelStyle: TextStyle(
            fontSize: 16,
            backgroundColor: Colors.white10,
            color: Colors.lightBlue
        ),
        suffixIcon:IconButton(
          icon: Icon(Icons.close),color: Colors.red,
          onPressed: ()=>returnpassword.clear(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      textInputAction: TextInputAction.done,
    ),
  );
}
