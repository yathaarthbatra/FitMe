import 'package:myapp1/screens/getstarted.dart';
import 'package:myapp1/screens/wrapper.dart';

import 'package:myapp1/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser>.value(
      value: Authservices().user,
          child: MaterialApp(
        home: Wrapper()
      ),
    );
  }
}