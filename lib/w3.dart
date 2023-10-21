import 'package:flutter/material.dart';

class w3 extends StatefulWidget {
  const w3({Key? key}) : super(key: key);

  @override
  State<w3> createState() => _w3State();
}

class _w3State extends State<w3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/karon.jpg"),
            ),
            title: Text("Karon It Training "),
            subtitle: Text("Just Now "),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius:25,
              backgroundImage: AssetImage('assets/img2.jpg'),
            ),
            title: Text("Royal Ghoghari"),
            subtitle: Text("25 Minutes ago "),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/flutter.jpg'),
            ),
            title: Text("Karon.Keyur Sir "),
            subtitle: Text("5 Hours Ago"),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/ram.jpg'),
            ),
            title: Text("Ram Hari Om"),
            subtitle: Text("10 Minites Ago"),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/smile.jpg'),
            ),
            title: Text("Mehul Bhai  "),
            subtitle: Text("Yesterday,10:07 Pm"),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/haresh.jpg'),
            ),
            title: Text(" Karon.Hareshbhai "),
            subtitle: Text("Today 12:00 Am"),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kk.jpg'),
            ),
            title: Text("Karon Jenish Kapdiya  "),
            subtitle: Text("5 Hour Ago"),
            trailing: Icon(Icons.video_call),

            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/rohit.jpg'),
            ),
            title: Text(" Rohit sharma  "),
            subtitle: Text("5 Minutes Ago"),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kohli.jpg'),
            ),
            title: Text(" Virat Kohli "),
            subtitle: Text("Yesterday,11:00 Pm "),
            trailing: Icon(Icons.video_call),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
