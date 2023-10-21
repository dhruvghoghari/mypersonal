import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
   var total="";


   Screen2({required this.total});
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc01313),
        title: Text("Screen2 "),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey.shade200,
          width: 500,
          height: 1000,
          child: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total :-"),
                 Text(widget.total.toString(),style: TextStyle(
                   fontSize: 50.0
                 ),),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();

                  }, child: Text("Back")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
