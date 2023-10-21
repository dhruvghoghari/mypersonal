import 'package:flutter/material.dart';

class TextfieldExample extends StatefulWidget {
  const TextfieldExample({Key? key}) : super(key: key);

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {

 TextEditingController _number1 = TextEditingController();
 TextEditingController _number2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfiledexample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Number:1"),
              TextField(
                controller: _number1,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              Text("Number:2"),
              TextField(
                controller: _number2,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  TextButton(
                    child:Text("+",style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),),
                    onPressed: () {
                      var number1 = _number1.text.toString();
                      var number2 = _number2.text.toString();
                      var total = int.parse(number1) + int.parse(number2);

                      print("Total = " + total.toString());
                    },
                  ),
              TextButton(
                child:Text("-",style: TextStyle(
                  fontSize: 30.0,
                  color:Colors.black,
                ),),
                onPressed: () {
                  var number1 = _number1.text.toString();
                  var number2 = _number2.text.toString();
                  var total1 = int.parse(number1) - int.parse(number2);
                  print("Total = " + total1.toString());

                },
              ),
              TextButton(
                child: Text("*",style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),),
                onPressed: () {
                  var number1 = _number1.text.toString();
                  var number2 = _number2.text.toString();
                  var total1 = int.parse(number1) * int.parse(number2);
                  print("Total = " + total1.toString());
                },
              ),
              TextButton(
                child: Text("/",style: TextStyle(
                  color:Colors.black,
                  fontSize: 30.0,
                ),),
                onPressed: (){
                  var number1 = _number1.text.toString();
                  var number2 = _number2.text.toString();
                  var total1 = int.parse(number1) / int.parse(number2);
                  print("Total = " + total1.toString());

                },
              ),
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
