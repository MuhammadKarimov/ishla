import 'package:flutter/material.dart';
import 'package:professor/oquvishlari.dart';
import 'package:professor/qoshimcha/illmiytadqiqot.dart';
import 'package:professor/qoshimcha/ilmiyuslubiy.dart';
import 'package:professor/qoshimcha/settings.dart';
import 'package:professor/test.dart';
class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Nokiasport57'),
              accountEmail: Text('nokiasport57@gmail.com'),
               currentAccountPicture: CircleAvatar(
                 child: ClipOval(
                   child: Image.asset('asset/kitobyaxshisi.jpeg',
                     width: 90,
                     height: 90,
                     fit:BoxFit.cover,),

                 ),
               ),
          ),
          ListTile(
            leading: Icon(Icons.leaderboard),
            title: Text("O'quv ishlari"),
            onTap: () => Navigator.of(context)
        .push(MaterialPageRoute(
    builder: (context)=>OquvIshlari(),)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.leaderboard),
            title: Text("Ilmiy-uslubiy ishlar"),
            onTap: ()=>  Navigator.of(context)
                .push(MaterialPageRoute(
              builder: (context)=>IlmiyUslubiy(),)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cast_for_education_outlined),
            title: Text("ILmiy-tadqiqot ishlari"),
            onTap: ()=> Navigator.of(context)
                .push(MaterialPageRoute(
              builder: (context)=>IlmiyTadqiqot(),)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Ustoz-Shogird ishlari"),
            onTap: ()=>Navigator.of(context)
                .push(MaterialPageRoute(
              builder: (context)=>Table())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.leaderboard_outlined),
            title: Text("Reyting ballar"),
            onTap: ()=> null,
          ),
          Divider(),
          ListTile(
            leading: Icon( Icons.settings),
            title: Text("Sozlamalar"),
            onTap: ()=>Navigator.of(context)
                .push(MaterialPageRoute(
              builder: (context)=>Settings(),)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Chiqish"),
            onTap: ()=>Navigator.of(context)
        .push(MaterialPageRoute(
    builder: (context)=>test(),),)
          ),
          Divider(),
        ],
      ),
    );
  }
}
