import 'package:flutter/material.dart';

class StateManegment extends StatefulWidget {
  const StateManegment({Key? key}) : super(key: key);

  @override
  State<StateManegment> createState() => _StateManegmentState();
}

class _StateManegmentState extends State<StateManegment> {


  var result="";

  TextEditingController _Number1 = TextEditingController();
  TextEditingController _Number2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManegment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Number:1"),
            TextField(
              keyboardType: TextInputType.number,
              controller: _Number1,
            ),
            Text("Number:2"),
            TextField(
              keyboardType: TextInputType.number,
              controller:_Number2,
            ),
            Row(
              children: [
                TextButton(onPressed: (){
                  var total = int.parse(_Number1.text.toString()) + int.parse(_Number2.text.toString());
                  setState(() {
                    result = total.toString();
                  });

                }, child:Text("+",style: TextStyle(
                  fontSize:30.0,
                  color: Colors.black
                ),)),
                TextButton(onPressed: (){
                  var total = int.parse(_Number1.text.toString()) - int.parse(_Number2.text.toString());
                  setState(() {
                    result = total.toString();
                  });

                }, child:Text("-",style: TextStyle(
                  fontSize: 30.0,
                    color: Colors.black
                ),)),
                TextButton(onPressed: (){
                  var total = int.parse(_Number1.text.toString()) * int.parse(_Number2.text.toString());
                  setState(() {
                    result = total.toString();
                  });

                }, child:Text("*",style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black
                ),)),
                TextButton(onPressed: (){
                  var total = int.parse(_Number1.text.toString()) / int.parse(_Number2.text.toString());
                  setState(() {
                    result = total.toString();
                  });

                }, child: Text("/",style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black
                ),)),
          ],
        ),

            Text("Result : "+result)

          ],
        ),
      ),
    );
  }
}

