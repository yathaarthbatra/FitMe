import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/models/database%20model.dart';
import 'package:myapp1/screens/home/account1.dart';
import 'package:myapp1/services/database.dart';
import 'package:provider/provider.dart';

class account extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return StreamProvider<List<DatabaseModel>>.value(//this will catch the stream and will store the value below like
      value: DatabaseService().details,//now this will call the stream and will return snapshot(collection)
      child: Scaffold(
        body: account1(),
      ),
    );
  }
}
