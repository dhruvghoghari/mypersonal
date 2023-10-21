import 'package:flutter/material.dart';
import 'package:mypersonal/increment.dart';

class statedemo extends StatefulWidget {
  const statedemo({Key? key}) : super(key: key);

  @override
  State<statedemo> createState() => _statedemoState();
}
 TextEditingController _number1 = TextEditingController();
 TextEditingController _number2 = TextEditingController();

 var result="";

class _statedemoState extends State<statedemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statedemo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _number1,
                decoration: InputDecoration(
                  hintText: "NO:1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _number2,
                decoration: InputDecoration(
                 hintText: "NO:2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: (){
                  var total = int.parse(_number1.text.toString()) + int.parse(_number2.text.toString());
                  setState(() {
                    result = total.toString();
                  });

                }, child: Text("+",style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black
                ),)),

            TextButton(onPressed: (){
              var total = int.parse(_number1.text.toString()) - int.parse(_number2.text.toString());
              setState(() {
                result = total.toString();
              });

            }, child: Text("-",style: TextStyle(
                fontSize: 30.0,
                color: Colors.black
            ),)),
            TextButton(onPressed: (){
              var total = int.parse(_number1.text.toString()) * int.parse(_number2.text.toString());
              setState(() {
                result = total.toString();
              });
            }, child: Text("*",style: TextStyle(
                fontSize: 30.0,
                color: Colors.black
            ),)),
            TextButton(onPressed: (){
              var total = int.parse(_number1.text.toString()) / int.parse(_number2.text.toString());
              setState(() {
                result = total.toString();
              });

            }, child: Text("/",style: TextStyle(
                fontSize: 30.0,
                color: Colors.black
            ),)),
              ],
            ),
            ElevatedButton(onPressed: (){

            }, child: Text("Result :"+result)),
          ],
        ),
      ),
    );
  }
}


