import 'package:flutter/material.dart';

class increment extends StatefulWidget {
  const increment({Key? key}) : super(key: key);

  @override
  State<increment> createState() => _incrementState();
}
 var result="";
 var sun="";

TextEditingController _number1 = TextEditingController();
TextEditingController _number2 = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _incrementState extends State<increment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Example"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  cursorWidth: 10.0,
                  cursorColor: Colors.grey,
                  cursorRadius: Radius.circular(10.0),
                  keyboardType: TextInputType.number,
                  controller: _number1,
                  decoration: InputDecoration(
                    hintText: "Number 1",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  cursorColor: Colors.green,
                  cursorWidth: 10.0,
                  cursorRadius: Radius.circular(10.0),
                  keyboardType: TextInputType.number,
                  controller: _number2,
                  decoration: InputDecoration(
                    hintText: "Number 2",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.add),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(onPressed: (){
                    var total = int.parse(_number1.text.toString()) + int.parse(_number2.text.toString());
                    _number1.clear();
                    _number2.clear();

                    setState(() {
                      result = total.toString();
                    });

                  }, child:Text("+",style: TextStyle(
                    fontSize: 20.0,
                      color: Colors.black
                  ),)),
                  TextButton(onPressed: (){
                    var total = int.parse(_number1.text.toString()) - int.parse(_number2.text.toString());
                    _number1.clear();
                    _number2.clear();

                    setState(() {
                      result = total.toString();
                    });

                  }, child: Text("-",style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),)),
                  TextButton(onPressed: (){
                    var total = int.parse(_number1.text.toString()) * int.parse(_number2.text.toString());
                    _number1.clear();
                    _number2.clear();
                    setState(() {
                      result = total.toString();
                    });

                  }, child: Text("*",style: TextStyle(
                    fontSize: 20.0,
                      color: Colors.black
                  ),)),
                  TextButton(onPressed: (){
                    var total = int.parse(_number1.text.toString()) / int.parse(_number2.text.toString());
                    _number1.clear();
                    _number2.clear();
                    setState(() {
                      result = total.toString();
                    });

                  }, child: Text("/",style: TextStyle(
                    fontSize: 20.0,
                      color: Colors.black
                  ),)),
                ],
              ),
              ElevatedButton(onPressed: (){

              }, child: Text("Result :"+result,style: TextStyle(
                fontSize: 20.0,
              ),)),
            ],
          ),
        ),
      ),
    );
  }
}
