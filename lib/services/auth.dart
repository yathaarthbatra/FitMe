import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/authenticate/register.dart';
import 'package:myapp1/services/database.dart';

//auth services are to be made of the following services seperately but inside a same class

class Authservices{

 String gender;
 var age;
 var height;
 var weight;



//we will make a object of firebase auth to accesss that class functions
final FirebaseAuth _auth=FirebaseAuth.instance;

//creating streams it tells what will happen if the user signed in
Stream<FirebaseUser> get user{
  return _auth.onAuthStateChanged;
}


//auth service for anonymous user sign in
Future signInAnon() async{
  try{
    
    final FirebaseUser user=(await _auth.signInAnonymously()).user;
    return user;
}
  catch(e){
     print(e.toString());
     return null;
  }
}
void transfer(String gender1,var age1,var height1,var weight1){
  gender=gender1;
  age=age1;
  height=height1;
  weight=weight1;
}

//auth service function for creating the function register with email and password
Future registerwithemailpassword(String email,String password) async{
 try{
   AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
   FirebaseUser user=result.user;
   await DatabaseService(uid: user.uid).UpdateUserdata(user.email,gender,age,height,weight);



   return user;
 }
 catch(e){
   print(e.toString());
   return null;
 }
}
//auth service fn for user sign IN
Future signINwithemailpassword(String email,String password) async{
 try{
   AuthResult result=await _auth.signInWithEmailAndPassword(email: email, password: password);
   FirebaseUser user=result.user;
   return user;
 }
 catch(e){
   print(e.toString());
   return null;
 }
}
//signout 
Future signout() async{
  try{
    return await _auth.signOut();
  }
  catch(e){
    print(e.toString());
    return null;

  }
}
}
