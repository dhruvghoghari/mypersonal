import 'package:flutter/material.dart';

class SnackbarValidation extends StatefulWidget {

  @override
  State<SnackbarValidation> createState() => _SnackbarValidationState();
}

class _SnackbarValidationState extends State<SnackbarValidation> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _password = TextEditingController();
  var nm="";
  var em="";
  var nmr="";
  var pw="";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar  Validation"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _name,
                keyboardType: TextInputType.text,
                cursorColor: Colors.brown,
                cursorWidth: 8.0,
                cursorRadius: Radius.circular(10.0),
                decoration: InputDecoration(
                  hintText: "Full Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.brown,
                cursorWidth: 8.0,
                cursorRadius: Radius.circular(10.0),
                decoration: InputDecoration(
                    hintText: "Email Address",
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _number,
                keyboardType: TextInputType.number,
                cursorColor: Colors.brown,
                cursorWidth: 8.0,
                cursorRadius: Radius.circular(10.0),
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                controller: _password,
                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.brown,
                cursorWidth: 8.0,
                cursorRadius: Radius.circular(10.0),
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_open),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  var name = _name.text.toString();
                  var email = _email.text.toString();
                  var number = _number.text.toString();
                  var password = _password.text.toString();

                  setState(() {
                    nm = name.toString();
                    em = email.toString();
                    nmr = number.toString();
                    pw = password.toString();
                  });
                  print("Name :"+nm);
                  print("Email :"+em);
                  print("Number :"+nmr);
                  print("Password :"+pw);


                  if(name.length<=0)
                    {
                      var snackbar = SnackBar(
                        content: Text("Enter Your Name"),
                        duration: Duration(seconds:5),
                        backgroundColor: Colors.red,
                        action: SnackBarAction(textColor:Colors.white,label: "Close",onPressed: (){}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  else if(email.length<=0)
                    {
                      var snackbar = SnackBar(
                        content: Text("Enter Email"),
                        duration: Duration(seconds:5),
                        backgroundColor: Colors.red,
                        action: SnackBarAction(textColor:Colors.white,label: "Close",onPressed: (){}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  else if(number.length!=10)
                    {
                      var snackbar = SnackBar(
                        content: Text("Valid Mobile Number"),
                        duration: Duration(seconds:5),
                        backgroundColor: Colors.red,
                        action: SnackBarAction(textColor:Colors.white,label: "Close",onPressed: (){}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  else if(password.length!=10)
                    {
                      var snackbar = SnackBar(
                        content: Text("Enter valid password"),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.red,
                        action: SnackBarAction(textColor:Colors.white,label: "Close ",onPressed: (){}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      print("Password :"+pw);
                    }
                  else
                    {
                      var snackbar = SnackBar(
                        content: Text(" Your Form Successfully "),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.green,
                        action: SnackBarAction(textColor: Colors.white,label: "Close",onPressed: (){}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }

                }, style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                    child: Text("Submit ")),

                ElevatedButton(onPressed: (){
                 

                },style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                    child: Text("Cancel")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
