import 'package:flutter/material.dart';
import 'package:whatsapppro/login/login.dart';
import 'package:whatsapppro/models/contact.dart';
import 'package:whatsapppro/screens/contacts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectIndex = 0;
  List<Widget> screen = [
    Contacts(),
    Text("Updates"),
    Text("Communities"),
    Text("Calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.green
        ),
        title: Row(
            children:[
              Text("WhatsApp", style: TextStyle(color: Colors.green),),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined),color: Colors.green,),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),color: Colors.green),
        ])
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: [
            ListTile(title: Text("New group", style: TextStyle(color: Colors.white),) ,onTap: (){},trailing: Icon(Icons.group, color: Colors.white,),),
            ListTile(title: Text("New community", style: TextStyle(color: Colors.white),), onTap: (){},trailing: Icon(Icons.people_rounded, color: Colors.white),),
            ListTile(title: Text("New broadcast", style: TextStyle(color: Colors.white),), onTap: (){},trailing: Icon(Icons.broadcast_on_personal_outlined, color: Colors.white),),
            ListTile(title: Text("Linked devices", style: TextStyle(color: Colors.white),), onTap: (){},trailing: Icon(Icons.devices_sharp, color: Colors.white),),
            ListTile(title: Text("Starred", style: TextStyle(color: Colors.white),), onTap: (){},trailing: Icon(Icons.star, color: Colors.white),),
            ListTile(title: Text("Read all", style: TextStyle(color: Colors.white),), onTap: (){},trailing: Icon(Icons.mark_chat_read_rounded, color: Colors.white),),
            ExpansionTile(title: Text("Settings", style: TextStyle(color: Colors.white),),trailing: Icon(Icons.settings, color: Colors.white), children: [
              ListTile(title: Text("Log out", style: TextStyle(color: Colors.white),), onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },trailing: Icon(Icons.logout, color: Colors.white),),],),
          ],
        ),
      ),
      body: Center(child: screen[selectIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
            onTap: (index) {
              print("Index = $index");
              setState(() {
                selectIndex = index;
              });
            },
            backgroundColor: Colors.black87,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined),
                label: "Chat",
                backgroundColor: Colors.black87,),
              BottomNavigationBarItem(
                icon: Icon(Icons.change_circle_outlined),
                label: "Updates",
                backgroundColor: Colors.black87,),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                label: "Communities",
                backgroundColor: Colors.black87,),
              BottomNavigationBarItem(
                icon: Icon(Icons.call_outlined),
                label: "Calls",
                backgroundColor: Colors.black87,),
            ]),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: Icon(Icons.add_comment,color: Colors.black87,),),

    );
  }
}
