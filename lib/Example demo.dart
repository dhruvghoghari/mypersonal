import 'package:flutter/material.dart';

class Exampledemo extends StatefulWidget {
  const Exampledemo({Key? key}) : super(key: key);

  @override
  State<Exampledemo> createState() => _ExampledemoState();
}
 var nm="";
 var rn="";
 var totall="";
 var pr="";


 TextEditingController  _name     = TextEditingController();
 TextEditingController  _rollno   = TextEditingController();
 TextEditingController  _subject1 = TextEditingController();
 TextEditingController  _subject2 = TextEditingController();
 TextEditingController  _subject3 = TextEditingController();
 TextEditingController  _total    = TextEditingController();
 TextEditingController  _percentage = TextEditingController();


class _ExampledemoState extends State<Exampledemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Result"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle:TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _rollno,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Roll No",
                  hintStyle:TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: _subject1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Subject 1",
                  hintStyle:TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _subject2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Subject 2",
                  hintStyle:TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _subject3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Subject 3",
                  hintStyle:TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              var name = _name.text.toString();
              var rollno = _rollno.text.toString();
              var total = int.parse(_subject1.text.toString()) + int.parse(_subject2.text.toString()) + int.parse(_subject3.text.toString());
              var percentage = (total/3).toString();
              var result = totall.toString();
              setState(() {
                nm = name.toString();
                rn = rollno.toString();
                totall = total.toString();
                pr = percentage.toString();
              });
              final double abc=47.64646122587197;
              int? y = int.tryParse(abc.toString().split('.')[1].substring(0,2));
              var list=abc.toString().split('.');
              var finalPercentage=list[0]+"."+list[1].substring(0,2)+"%";
              print(finalPercentage);
              print("Name :"+nm);
              print("Roll No :"+rn);
              print("Total :"+totall);
              print("Percentage :"+pr);

            }, child: Text("Submit")),
            Text("Name :"+nm),
            Text("Roll No :"+rn),
            Text("Total :"+totall),
            Text("Percntage :"+pr),
          ],
        ),
      ),
    );
  }
}
