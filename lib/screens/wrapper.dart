import 'package:myapp1/screens/authenticate/authenticate.dart';
import 'package:myapp1/screens/getstarted.dart';
import 'package:myapp1/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user=Provider.of<FirebaseUser>(context);
    //returns either home or authenticate
    if(user==null)
    return GetStarted();
    else
    return Home();
  }
}