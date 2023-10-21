import 'package:flutter/material.dart';

class TextformfiledDemo extends StatefulWidget {
  const TextformfiledDemo({Key? key}) : super(key: key);

  @override
  State<TextformfiledDemo> createState() => _TextformfiledDemoState();
}

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  var formkey = GlobalKey<FormState>();

class _TextformfiledDemoState extends State<TextformfiledDemo> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.redAccent,
        title: Center(child: Text(" Login Page")),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
            child: Column(
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    cursorColor: Colors.green,
                    cursorWidth:7.0,
                    cursorRadius: Radius.circular(10.0),
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                        prefixIcon: Theme(
                          data: Theme.of(context).copyWith(
                            iconTheme: IconThemeData(color: Colors.green),
                          ),
                          child: Icon(Icons.email_outlined),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      )
                    ),
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val)

                      {
                       if(val!.length<=0)
                         {
                            return"Enter Your Email";
                         }
                       return null;
                      }
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                      cursorColor: Colors.green,
                      cursorWidth:7.0,
                      cursorRadius: Radius.circular(10.0),
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                        prefixIcon: Theme(
                          data: Theme.of(context).copyWith(
                            iconTheme: IconThemeData(color: Colors.green),
                          ),
                          child: Icon(Icons.lock_open),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      )
                    ),
                    controller: _password,
                    keyboardType: TextInputType.number,
                    validator: (pass)
                    {
                      if(pass!.length<=0)
                        {
                          return "Enter Your Password";
                        }
                      else if(pass!.length!=10)
                        {
                           return"Please Enter 10 Digit valid password";
                        }
                    }
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: Text("Remember Me",style: TextStyle(
                          color: Colors.green
                      ),),
                    ),
                    InkWell(
                      onLongPress: (){},
                      child: Text("Forgot Password",style: TextStyle(
                          color: Colors.green,
                      ),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                    ),
                    Text("Plase Check Tearm And Condition"),
                  ],
                ),

                ElevatedButton(onPressed:(){
                  if(formkey!.currentState!.validate())
                  {
                    var email = _email.text.toString();
                    var password = _password.text.toString();

                    print("Email : " + email);
                    print("Password : " + password);
                  }
                },
                    child:Text("LOGIN  ")),
              ],
            ),
          ),
        ),
      );
  }
}


