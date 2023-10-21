// import 'package:flutter/material.dart';
//
// class Screen1 extends StatefulWidget {
//   @override
//   State<Screen1> createState() => _Screen1State();
// }
//
// class _Screen1State extends State<Screen1> {
//   TextEditingController _no1 = TextEditingController();
//   TextEditingController _no2 = TextEditingController();
//
//   @override
//   void dispose() {
//     _no1.dispose();
//     _no2.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Screen1"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "No :- 1",
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Container(
//                 width: 200,
//                 child: TextField(
//                   controller: _no1,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "No :- 2",
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Container(
//                 width: 200,
//                 child: TextField(
//                   controller: _no2,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   var total = int.parse(_no1.text) + int.parse(_no2.text);
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => Screen2(
//                         total: total.toString(),
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text("Go To Second Screen  👉"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
