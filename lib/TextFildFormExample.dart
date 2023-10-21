import 'package:flutter/material.dart';

class TextFiledFormExample extends StatefulWidget {
  const TextFiledFormExample({Key? key}) : super(key: key);

  @override
  State<TextFiledFormExample> createState() => _TextFiledFormExampleState();
}

class _TextFiledFormExampleState extends State<TextFiledFormExample> {

  TextEditingController _name = TextEditingController();
  TextEditingController _moblie = TextEditingController();

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFiledFormExample"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              Text("Name"),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                           Radius.circular(25.0),
                      ),
                    ),
                    // hintText: "Enter a Name",
                    //   hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.person_remove_sharp),
                    ),
                  ),
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (sun)
                    {
                      if(sun!.length<=0)
                        {
                          return "Please Enter Your Name";
                        }
                      return null;
                    }
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Mobile"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                           Radius.circular(25.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    // hintText: "Enter a Mobile Number",
                    //   hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.mobile_friendly),
                      ),
                  ),
                  controller: _moblie,
                  keyboardType: TextInputType.number,
                  validator: (val)
                    {
                      if(val!.length<=0)
                        {
                          return "Enter Your Moblie Nomber";
                        }
                      else if(val!.length!=10)
                        {
                          return "PLaese Enter Valid NOmber";
                        }
                      return null;

                    }
                  ),
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed:(){

                if(formkey!.currentState!.validate())
                  {
                    var name = _name.text.toString();
                    var moblie = _moblie.text.toString();

                    print("name: " + name);
                    print("mobile: " + moblie);

                  }
              },
                  child:Text("Submit")),
            ],
          ),

        ),
      ),
    );
  }
}
