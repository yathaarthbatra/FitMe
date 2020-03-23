import 'package:myapp1/screens/authenticate/authenticate.dart';
import 'package:myapp1/screens/authenticate/getstarted1.dart';
import 'package:myapp1/screens/authenticate/signin1.dart';
import 'package:myapp1/screens/wrapper.dart';
import 'package:flutter/material.dart';


class GetStarted extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/second':(context)=>authenticate()
      },
      
      home: Getstarted1()
    );
  }

 


  
}