import 'package:flutter/material.dart';

class StudentResult extends StatefulWidget {
  const StudentResult({Key? key}) : super(key: key);

  @override
  State<StudentResult> createState() => _StudentResultState();
}
 var  nm="";
 var  rn="";
 var  totall="";
 var  pr="";

 TextEditingController _name   = TextEditingController();
 TextEditingController _Rollno = TextEditingController();
 TextEditingController _sub1   = TextEditingController();
 TextEditingController _sub2   = TextEditingController();
 TextEditingController _sub3   = TextEditingController();

class _StudentResultState extends State<StudentResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Student Result")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: TextField(
                    controller: _name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " Name : -",
                    ),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _Rollno,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Roll No : -",
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _sub1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Subject 1 : -",
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _sub2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Subject 2 : -",
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _sub3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Subject 3 : -",
                      ),
                    )
                ),
              ),
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                var name   = _name.text.toString();
                var Rollno = _Rollno.text.toString();
                var total  = int.parse(_sub1.text.toString()) + int.parse(_sub2.text.toString()) + int.parse(_sub3.text.toString());
                var percentage = (total/3).toString();
                setState(() {
                  nm = name.toString();
                  rn = Rollno.toString();
                  totall = total.toString();
                  pr = percentage.toString();
                });
                print("name :"+nm);
                print("Roll no:"+rn);
                print("total :"+totall);
                print("Percentage :"+pr);


              }, child: Text("Result")),
            ),
            Text("Name :- "+nm,style: TextStyle(
              fontSize: 30.0,
            ),),
            Text("Roll No :- "+rn,style: TextStyle(
              fontSize: 30.0,
            ),),
            Text("Total :- "+totall,style: TextStyle(
              fontSize: 30.0,
            ),),
            Text("Percntage :-"+pr,style: TextStyle(
              fontSize: 30.0,
            ),),
          ],
        ),
      ),
    );
  }
}







