import 'package:flutter/material.dart';
import 'package:mypersonal/Screen1.dart';
import 'package:mypersonal/TextfieldExample.dart';
import 'package:mypersonal/statedemo.dart';
import 'package:mypersonal/w1.dart';
import 'package:mypersonal/w2.dart';
import 'AmazonDemo.dart';
import 'EmploySalary.dart';
import 'Example demo.dart';
import 'MyTabBarWidget.dart';
import 'PopupMenu.dart';
import 'RadioButton.dart';
import 'SnackbarValidation.dart';
import 'StackLogIn.dart';
import 'StateManegment.dart';
import 'StudentForm.dart';
import 'StudentResult.dart';
import 'TextFildFormExample.dart';
import 'TextformfiledDemo.dart';
import 'Whatsapp.dart';
import 'increment.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: SnackbarValidation(),
    );
  }
}
