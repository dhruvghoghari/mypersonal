import 'package:flutter/material.dart';

class w2 extends StatefulWidget {
  const w2({Key? key}) : super(key: key);

  @override
  State<w2> createState() => _w2State();
}

class _w2State extends State<w2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/dhruv.png"),
            ),
            title: Text("My Status"),
            subtitle: Text("Tap To Add Status Update"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent Updates"),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/karon.jpg"),
            ),
            title: Text("Karon It Training "),
            subtitle: Text("Just Now "),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius:25,
              backgroundImage: AssetImage('assets/img2.jpg'),
            ),
            title: Text("Royal Ghoghari"),
            subtitle: Text("25 Minutes ago "),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/flutter.jpg'),
            ),
            title: Text("Karon.Keyur Sir "),
            subtitle: Text("5 Hours Ago"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/ram.jpg'),
            ),
            title: Text("Ram Hari Om"),
            subtitle: Text("10 Minites Ago"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/smile.jpg'),
            ),
            title: Text("Mehul Bhai  "),
            subtitle: Text("Yesterday,10:07 Pm"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/haresh.jpg'),
            ),
            title: Text(" Karon.Hareshbhai "),
            subtitle: Text("Today 12:00 Am"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kk.jpg'),
            ),
            title: Text("Karon Jenish Kapdiya  "),
            subtitle: Text("5 Hour Ago"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/rohit.jpg'),
            ),
            title: Text(" Rohit sharma  "),
            subtitle: Text("5 Minutes Ago"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/kohli.jpg'),
            ),
            title: Text(" Virat Kohli "),
            subtitle: Text("Yesterday,11:00 Pm "),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
