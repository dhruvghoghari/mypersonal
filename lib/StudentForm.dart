import 'package:flutter/material.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({Key? key}) : super(key: key);

  @override
  State<StudentForm> createState() => _StudentFormState();
}
 var nm="";
 var lt="";
 var ad="";
 var pr="";
 var gr="";

 TextEditingController _name = TextEditingController();
 TextEditingController _last = TextEditingController();
 TextEditingController _add = TextEditingController();
 TextEditingController _gender = TextEditingController();
 TextEditingController _Pincode = TextEditingController();

 var gender="male";
 var state="dl";
 var department = "sale";
 var box = false;
class _StudentFormState extends State<StudentForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StudentForm"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("First:-"),
                    ),
                    SizedBox(
                      width: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                            controller: _name,
                            keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            border: OutlineInputBorder(
                            ),
                    )),
                      ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Last:-"),
                    ),
                    SizedBox(
                      width: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _last,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                              border: OutlineInputBorder(
                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft ,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Add:-"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 40.0),
                  border: OutlineInputBorder(
                  )
                ),
                controller: _add,
                keyboardType: TextInputType.text,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Gender :-"),
              ),
            ),
            Row(
              children: [
            Radio(
              value:"male",
              groupValue: gender,
              onChanged: (val){
                setState(()
                {
                  gender=val!;
                });
              },
            ),
            Text("Male"),
                Radio(
                  value:"Female",
                  groupValue: gender,
                  onChanged: (val){
                    setState(()
                    {
                      gender=val!;
                    });
                  },
                ),
                Text("Female"),
          ],
        ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("State :-"),
              ),
            ),
        DropdownButton(
          value: state,
          onChanged: (val) {
            setState(() {
              state = val!;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text("Delhi"),
              value: "dl", // Unique value for Delhi
            ),
            DropdownMenuItem(
              child: Text("Gujarat"),
              value: "GUjarat", // Unique value for Gujarat
            ),
            DropdownMenuItem(
              child: Text("punjab"),
              value: "pb", // Unique value for Gujarat
            ),
            DropdownMenuItem(
              child: Text("hariyana"),
              value: "hr", // Unique value for Gujarat
            ),
            DropdownMenuItem(
              child: Text("keral"),
              value: "kr", // Unique value for Gujarat
            ),
          ],
        ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Pin Code:-"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    border: OutlineInputBorder(),

                  ),
                  keyboardType: TextInputType.number,
                  controller: _Pincode,

                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Department :-"),
              ),
            ),
            DropdownButton(
              value: department,
              onChanged: (val) {
                setState(() {
                  department = val!;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text("Sale"),
                  value: "sale",
                ),
                DropdownMenuItem(
                  child: Text("Marketing"),
                  value: "mrk",
                ),
                DropdownMenuItem(
                  child: Text("profit"),
                  value: "Profit",
                ),
                DropdownMenuItem(
                  child: Text("mrp"),
                  value: "mr",
                ),
              ],
          ),
            Row(
              children: [
                Checkbox(
                  value: box,
                  onChanged: (bool? value) {
                    setState(() {
                     box = value!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
                Text("Accept Tearm And Condition"),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if(box)
                    {
                      var name   = _name.text.toString();
                      var last   = _last.text.toString();
                      var add    = _add.text.toString();
                      var pincode = _Pincode.text.toString();

                      setState(() {
                        nm = name.toString();
                        lt = last.toString();
                        ad = add.toString();
                        gr = gender.toString();
                        pr = pincode.toString();

                      });
                      print("name :"+nm);
                      print("Last :"+lt);
                      print("add :"+ad);
                      print("Gender :"+gr);
                      print("Pinode :"+pr);
                      print("State :"+state);
                      print("Department :"+department);
                    }
                  else
                    {
                      print("Please Accept Terms and conditions");
                    }

                }, child: Text("Submit")),
            ElevatedButton(onPressed: (){

            }, style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),),
                child: Text("Cancel")),
          ],
          ),
          ],
        ),
      ),
    );
  }
}







