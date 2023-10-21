import 'package:flutter/material.dart';

class EmploySalary extends StatefulWidget {
  const EmploySalary({Key? key}) : super(key: key);

  @override
  State<EmploySalary> createState() => _EmploySalaryState();
}
 var nm="";
 var sr="";
 var hr="";
 var da="";
 var Prf="";
 var ns="";

TextEditingController _name =   TextEditingController();
TextEditingController _salary = TextEditingController();


class _EmploySalaryState extends State<EmploySalary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employ data"),
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
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all( width: 1.0,
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _salary,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Salary : -",
                      ),
                    )
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              var name   = _name.text.toString();
              var salary = _salary.text.toString();
              var hra    = int.parse(_salary.text.toString()) * 2 / 100;
              var daa    = int.parse(_salary.text.toString()) * 3 / 100;
              var pf    = int.parse(_salary.text.toString()) * 14 / 100;
              var net = int.parse(salary) + hra + daa - pf;

              setState(() {
                nm =  name.toString();
                sr =  salary.toString();
                hr =  hra.toString();
                da =  daa.toString();
                Prf  = pf.toString();
                ns=net.toString();
              });
              print("name:-"+nm);
              print("Salary:-"+sr);
              print("HRA:-"+hr);
              print("Da:-"+da);
              print("Pf:-"+Prf);

            }, child: Text("Submit")),
            Text("Name :-"+nm,style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("Salary :-"+sr,style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("HRA :-"+hr,style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("DA :-"+da,style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("PF :-"+Prf,style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("NS :-"+ns,style: TextStyle(
              fontSize: 20.0,
            ),),
          ],
        ),
      ),
    );
  }
}

