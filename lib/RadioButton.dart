import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

 var label="";
 var result="";

 TextEditingController _number1 = TextEditingController();
 TextEditingController _number2 = TextEditingController();


class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Radio Button",style: TextStyle(
            color: Colors.purple,
          ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _number1,
                decoration: InputDecoration(
                  labelText:("Number1"),
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _number2,
                decoration: InputDecoration(
                  labelText: "Number2",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(
                  activeColor: Colors.purple,
                  groupValue: label,
                  value: "+",
                  onChanged: (val)
                    {
                      setState(() {
                        label = val!;
                      });

                    }
                ),
                Text("+",style: TextStyle(
                  fontSize: 30.0
                ),),
                Radio(
                    activeColor: Colors.purple,
                    groupValue: label,
                    value: "-",
                    onChanged: (val)
                    {
                      var total = int.parse(_number1.text.toString()) - int.parse(_number2.text.toString());
                      setState(() {
                        result = total.toString();
                        label = val!;
                      });

                    }
                ),
                Text("-",style: TextStyle(
                    fontSize: 40.0
                ),),
                Radio(
                    activeColor: Colors.purple,
                    groupValue: label,
                    value: "*",
                    onChanged: (val)
                    {

                      setState(() {
                        label = val!;
                      });
                    }
                ),
                Text("*",style: TextStyle(
                    fontSize: 25.0
                ),),
                Radio(
                    activeColor: Colors.purple,
                    groupValue: label,
                    value: "/",
                    onChanged: (val)
                    {
                      var total = int.parse(_number1.text.toString()) / int.parse(_number2.text.toString());
                      setState(() {
                        result = total.toString();
                        label = val!;
                      });

                    }
                ),
                Text("/",style: TextStyle(
                    fontSize: 30.0
                ),),
              ],
            ),
            ElevatedButton(onPressed: (){

              if(label=="+")
                {
                  setState(() {
                    var total = int.parse(_number1.text.toString()) + int.parse(_number2.text.toString());
                    result = total.toString();
                  });
                }
              else if(label=="-")
              {
                setState(() {
                  var total = int.parse(_number1.text.toString()) - int.parse(_number2.text.toString());
                  result = total.toString();
                });
              }
              
            }, child: Text("Submit",style: TextStyle(
              color: Colors.purple,
            ),)),

            Text("result :"+result,style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),),
          ],
        ),
      ),
    );
  }
}
