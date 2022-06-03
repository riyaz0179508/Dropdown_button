import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
List <String> gender=[
  "Male",
  "Female",
  "Others"
];

var selectedVal;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DropdownButton(
        hint: Text("Chose"),
        items: gender.map((item)=>DropdownMenuItem(
    value: item,
        child: Text(item))).toList(),
    value: selectedVal,
    onChanged: (val){
         setState(() {
           selectedVal=val;
         });
    },
        ),
      )
      )
    );
  }
}

