import 'package:myapp1/screens/Yoga/Yoga_1_1.dart';
import 'package:myapp1/screens/Yoga/Yoga_1_2.dart';
import 'package:myapp1/screens/Yoga/Yoga_home_1.dart';
import 'package:myapp1/screens/Yoga/Yoga_home_2.dart';
import 'package:myapp1/screens/Yoga/Yoga_home_3.dart';
import 'package:myapp1/screens/Yoga/Yoga_home_4.dart';
import 'package:myapp1/screens/home/Account.dart';
import 'package:myapp1/screens/home/Expert_talk.dart';
import 'package:myapp1/screens/home/home1.dart';
import 'package:myapp1/screens/home/notifications.dart';
import 'package:myapp1/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/Diets/Diet_home.dart';
import 'package:myapp1/screens/Fit%20Plan/Fit_home.dart';
import 'package:myapp1/screens/Gym/Gym_home.dart';
import 'package:myapp1/screens/Yoga/Yoga_home.dart';



class Home extends StatefulWidget {
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Authservices _auth=Authservices();
  int current=0;//indicator of carousel
  int _currenttap=0;//this will tell that where we are

  //a function which will change the value of the _currenttap
  void onTappedbar(int index){
    setState(() {
      _currenttap=index;
    });
  }
  final List<Widget> _pages=[Home1(),notifications(),expert(),account(),];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       routes: {
         '/home':(context)=>Home(),
        '/yoga':(context)=>YogaHome(),
        '/gym':(context)=>GymHome(),
        '/diet':(context)=>DietHome(),
        '/fitness':(context)=>FitHome(),
         '/yoga_1':(context)=>YogaHome1(),
         '/yoga_2':(context)=>YogaHome2(),
         '/yoga_3':(context)=>YogaHome3(),
         '/yoga_4':(context)=>YogaHome4(),
         '/yoga_1_1':(context)=>YogaHome1a(),
         '/yoga_1_2':(context)=>YogaHome1b()
        
      },
          home: Scaffold(
          
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.purpleAccent,Colors.purple],
                  stops: [0.0,0.9]
                )
              ),
            ),
            actions: <Widget>[
              FlatButton.icon(onPressed: (){
               dynamic result= _auth.signout();
                

              }, icon: Icon(Icons.person), label: Text('Logout'))
            ],
      title: Text('FitMe',
      style: TextStyle(
          fontFamily: 'muli',

      ),),
      backgroundColor: Colors.purpleAccent,
          ),
          body: _pages[_currenttap],
          //bottom navigation bar starts
          bottomNavigationBar: BottomNavigationBar(
      onTap:onTappedbar,
      
      
      type: BottomNavigationBarType.fixed,
  

      selectedItemColor: Colors.purpleAccent,
      
      currentIndex: _currenttap,//it is telling that currently where we are
      items:[
        BottomNavigationBarItem(

          
          icon:Icon(Icons.home,),
          
          title: Text('Home',),
         
          ),
          BottomNavigationBarItem(
          icon:Icon(Icons.notifications),
          title: Text('Notifications'),
          backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
          icon:Icon(Icons.message),
          title: Text('Expert Talk'),
          backgroundColor: Colors.white,
          ),
          
          BottomNavigationBarItem(
          icon:Icon(Icons.person),
          title: Text('Account'),
          backgroundColor: Colors.white,
          ),
      ],
   
          ),
      
          
          
        ),
    );
  }
}