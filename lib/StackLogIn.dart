import 'package:flutter/material.dart';
import 'package:mypersonal/EmploySalary.dart';

class StackLogIn extends StatefulWidget {
  const StackLogIn({Key? key}) : super(key: key);

  @override
  State<StackLogIn> createState() => _StackLogInState();
}

class _StackLogInState extends State<StackLogIn> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();

  var ln="";
  var ps="";
  var em="";
  var nm="";
  var ph="";
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer(
        elevation: 10,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(

                child: Image.network("https://img.freepik.com/premium-vector/telegram-icon_488108-1.jpg",
                  height: 200,
                  width: 200,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue.shade400
              ),
              accountName: Text("Welcome , Karon",style: TextStyle(
                color: Colors.white,
              ),),
              accountEmail: Text("9727822614",style: TextStyle(
                color: Colors.white,
              ),),
            ),
            ListTile(
              title: Text("Add Account"),
              leading:Icon(Icons.add_box_outlined),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("New Group"),
              leading:Icon(Icons.groups),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("New Secret"),
              leading:Icon(Icons.lock_open),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("New Channel"),
              leading:Icon(Icons.add_circle),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Contacts"),
              leading:Icon(Icons.person),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Calls"),
              leading:Icon(Icons.call),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Saved Message "),
              leading:Icon(Icons.save_alt),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading:Icon(Icons.settings),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Invite Frinds"),
              leading:Icon(Icons.inbox),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),

      ),
    appBar: AppBar(
      backgroundColor: Color(0xffbbdefb),
      title: Text("Log In"),
       actions: [
        // IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined)),
      //   IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      //   IconButton(onPressed: (){}, icon: Icon(Icons.home_filled))
      //
       ],
    ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // child: Image.network(
                // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUnLiWQqy8JxuIWp9LXa3BysVfqvFu381hOkbNbwhCSQ&usqp=CAU&ec=48600112",
                // fit: BoxFit.cover,
              // ),
               color: Colors.blue.shade200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome "),
                Center(
                  child: Card(
                    shadowColor: Colors.black,
                    elevation: 50,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(15.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10.0),
                          TextField(
                            controller:_name,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Full Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            controller:_email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                                hintText: "Enter Your Email",
                              // label: Text("Email"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            controller:_phone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              hintText: "Phone Number",
                              // label: Text("Phone"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            obscureText: !_passwordVisible,
                            controller: _password,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.key),
                              hintText: "Password",
                              // label: Text("Password"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                          TextButton(onPressed: (){

                          }, child: Text("Forgot Password",style: TextStyle(
                            color: Colors.black,
                          ),)),
                           ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                child: Text("Sign In"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff9fa8da),
                                  onSurface: Color(0xff90caf9),
                                  shadowColor: Colors.grey,
                                  elevation: 10.0,
                                ),
                                onPressed: () {
                                  var name = _name.text.toString();
                                  var email = _email.text.toString();
                                  var phone = _phone.text.toString();
                                  var password = _password.text.toString();

                                  setState(() {
                                    nm = name.toString();
                                    em = email.toString();
                                    ph = phone.toString();
                                    ps = password.toString();

                                  });
                                  print("Name :"+nm);
                                  print("Email  :"+em);
                                  print("Phone :"+ph);
                                  print("Password :"+ps);


                                  if(name.length<=0)
                                    {
                                      var snackBar = SnackBar(
                                        content: Text("Enter Name"),
                                        duration: Duration(seconds: 5),
                                        action: SnackBarAction(label: "Close",onPressed: (){},),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }
                                  else if(email.length<=0)
                                  {
                                    var snackBar = SnackBar(
                                      content: Text("Enter Email"),
                                      duration: Duration(seconds: 5),
                                      action: SnackBarAction(label: "Close",onPressed: (){},),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                  else if(phone.length!=10)
                                    {
                                      var snackBar = SnackBar(
                                        content: Text("Enter Phone Number"),
                                        duration: Duration(seconds: 5),
                                        action: SnackBarAction(label: "Close",onPressed: (){},),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }
                                  else if(password.length!=10)
                                    {
                                      var snackBar = SnackBar(
                                        content: Text("Enter Password"),
                                        duration: Duration(seconds: 5),
                                        action: SnackBarAction(label: "Close",onPressed: (){},),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }
                                  AlertDialog alert = AlertDialog(
                                    title: Text("Log In"),
                                    content: Text("Email "),
                                    backgroundColor: Colors.amber.shade100,
                                    actions: [
                                      ElevatedButton(onPressed: (){}, child: Text("Sign In ")),
                                      ElevatedButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("Cancel")),
                                    ],
                                  );
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                },
                              ),
                              ElevatedButton(
                                child: Text("Sign Up "),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff9fa8da),
                                  onSurface: Color(0xff90caf9),
                                  shadowColor: Colors.grey,
                                  elevation: 10.0
                                ),
                                onPressed: () {
                                },
                              ),
                          ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

