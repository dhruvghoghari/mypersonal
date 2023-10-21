import 'package:flutter/material.dart';
import 'package:mypersonal/PopupMenu.dart';
import 'package:mypersonal/w1.dart';
import 'package:mypersonal/w2.dart';
import 'package:mypersonal/w3.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}
class _WhatsappState extends State<Whatsapp> with SingleTickerProviderStateMixin {
   TabController? _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController!.addListener(_handleTabChange);
  }
  var selected=0;
  void _handleTabChange() {
    int currentIndex = _tabController!.index;
   setState(() {
     selected=currentIndex;
   });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Color(0xff00796b),
                title: Text("WhatsApp"),
                actions: [
                  IconButton(
                    icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      // showMenu(
                      //   context: context,
                      //   position: RelativeRect.fromRect(
                      //     Rect.fromLTWH(10.0, 5.0, 0.0, 0.0),
                      //      Offset.zero & MediaQuery.of(context).size,
                      //   ),
                      //   items: [
                      //     PopupMenuItem(
                      //       child: Text("Home"),
                      //     ),
                      //   ],
                      // );
                    },
                  ),
                ],
                pinned: true,
                floating: true,
                snap: true,
                bottom: TabBar(
                  controller: _tabController,
                  indicatorWeight: 8,
                  tabs: [
                    Tab(text: "Chats"),
                    Tab(text: "Status"),
                    Tab(text: "Calls"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              w1(),
              w2(),
              w3(),
            ],
          ),
        ),
        floatingActionButton: (selected==0)?FloatingActionButton(
          backgroundColor: Colors.green,
          elevation:20.0,
          onPressed: (){

          },child: Icon(Icons.message),
        ):(selected==1)?FloatingActionButton(
          backgroundColor: Colors.green,
          elevation:20.0,
          onPressed: (){

          },child: Icon(Icons.camera_alt),
        ):FloatingActionButton(
          backgroundColor: Colors.green,
          elevation:20.0,
          onPressed: (){

          },child: Icon(Icons.add_a_photo),
        ),
      ),
    );
  }
}
