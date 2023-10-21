import 'package:flutter/material.dart';

class w1 extends StatefulWidget {
  const w1({Key? key}) : super(key: key);

  @override
  State<w1> createState() => _w1State();
}

class _w1State extends State<w1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/karon.jpg"),
         ),
          title: Text("Karon It Training "),
          subtitle: Text("All course trainig Available...."),
          trailing: Text("09:30 AM"),
          onTap: (){},
        ),
          ListTile(
            leading: CircleAvatar(
              radius:25,
              backgroundImage: AssetImage('assets/img2.jpg'),
            ),
            title: Text("Royal Ghoghari"),
            subtitle: Text("New Message avilable...."),
            trailing: Text("01:30 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/flutter.jpg'),
            ),
            title: Text("Karon.Keyur Sir "),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("02:00 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/ram.jpg'),
            ),
            title: Text("Ram Hari Om"),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("11:00 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/smile.jpg'),
            ),
            title: Text("Mehul Bhai  "),
            subtitle: Text("Available...."),
            trailing: Text("10:40 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/haresh.jpg'),
            ),
            title: Text(" Karon.Hareshbhai "),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("02:00 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kk.jpg'),
            ),
            title: Text("Karon Jenish Kapdiya  "),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("02:00 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/rohit.jpg'),
            ),
            title: Text(" Rohit sharma  "),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("04:56 AM"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kohli.jpg'),
            ),
            title: Text(" Virat Kohli "),
            subtitle: Text("hello.How Are You...."),
            trailing: Text("12:20 AM"),
            onTap: (){},
          ),

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //
      //   },child: Icon(Icons.camera_alt_outlined),
      // ),
    );
  }
}
