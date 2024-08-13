import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module10_assignment/greeting_page.dart';

void main (){
  runApp(Mod_10_Assigment_App());
}
class Mod_10_Assigment_App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GreetingPage(),
    );
  }
}

