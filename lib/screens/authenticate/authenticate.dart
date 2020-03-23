import 'package:myapp1/screens/authenticate/register.dart';
import 'package:myapp1/screens/authenticate/signin1.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/loading.dart';

class authenticate extends StatefulWidget {
  @override
  _authenticateState createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  bool loading=false;
  bool showsignin=true;
  void toggleView(){
    setState(() {

      showsignin=!showsignin;
    });
  }
  @override
  Widget build(BuildContext context) {

    if(showsignin)
     return SignIn1(toggleView:toggleView);
    else
     return Register(toggleView:toggleView);
     
  }
}