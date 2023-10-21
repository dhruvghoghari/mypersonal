import 'package:flutter/material.dart';

class AmazonDemo extends StatefulWidget {
  const AmazonDemo({Key? key}) : super(key: key);

  @override
  State<AmazonDemo> createState() => _AmazonDemoState();
}
 TextEditingController _name = TextEditingController();

class _AmazonDemoState extends State<AmazonDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
               controller: _name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.qr_code_scanner),
                  hintText: "Search Amazon.In",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    margin: EdgeInsets.all(20.0),
                    color: Colors.red,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    margin: EdgeInsets.all(20.0),
                    color: Colors.green,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    margin: EdgeInsets.all(20.0),
                    color: Colors.blue,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    margin: EdgeInsets.all(20.0),
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
