import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:myapp1/screens/Diets/Diet_home.dart';
import 'package:myapp1/screens/Fit%20Plan/Fit_home.dart';
import 'package:myapp1/screens/Gym/Gym_home.dart';
import 'package:myapp1/screens/Yoga/Yoga_home.dart';
import 'package:myapp1/screens/home/home.dart';
import 'package:myapp1/screens/home/home2.dart';





class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: <Widget>[

          Container(
            height: 200.0,
            child: Carousel(

              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/images/1st.jpg'),
                AssetImage('assets/images/2nd.jpg'),
                AssetImage('assets/images/3rd.jpg'),
                AssetImage('assets/images/4th.jpg'),


              ],

              animationDuration: Duration(milliseconds: 2000),
              dotSize: 3.0,
              dotSpacing: 15.0,


            ),
          ),

          //1st module starts


          Container(
          child: Stack(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/Yoga.jpg'),
              ),
              Container(


                child: Text('Yoga Training',style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'muli',
                    color: Colors.white
                ),
                ),
                padding: EdgeInsets.only(top:10.0,left: 220.0),
              ),
              Container(
                padding: EdgeInsets.only(left: 220.0,top: 65.0),
                child: RaisedButton(

                  child: Text('Get started',
                  style: TextStyle(
                    fontFamily: 'muli',
                  ),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  onPressed: ()=>Navigator.pushNamed(context, '/yoga'),
                ),
              )
            ],
          )



          ),
          //2nd module starts
          Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/diet.jpg'),
                  ),
                  Container(


                    child: Text('Diet Plan',style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'muli',
                        color: Colors.white
                    ),
                    ),
                    padding: EdgeInsets.only(top:10.0,left: 220.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 220.0,top: 65.0),
                    child: RaisedButton(

                      child: Text('Get started',
                      style: TextStyle(
                        fontFamily: 'muli',
                      ),),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      onPressed: ()=>Navigator.pushNamed(context, '/diet'),
                    ),
                  )
                ],
              )



          ),
          //3rd module starts
          Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/gym.jpg'),
                  ),
                  Container(


                    child: Text('Gym Training',style: TextStyle(
                        fontFamily: 'muli',
                        fontSize: 25.0,
                        color: Colors.white
                    ),
                    ),
                    padding: EdgeInsets.only(top:10.0,left: 220.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 220.0,top: 65.0),
                    child: RaisedButton(


                      child: Text('Get started',
                      style: TextStyle(
                        fontFamily: 'muli',
                      ),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      onPressed: ()=>Navigator.pushNamed(context, '/gym'),
                    ),
                  )
                ],
              )



          ),
          //4th module starts
          Container(
              child: Stack(
                children: <Widget>[


                  Image(
                    image: AssetImage('assets/images/fitness.jpg'),
                  ),
                  Container(


                    child: Text('Fitness Training',style: TextStyle(
                        fontFamily: 'muli',
                      fontSize: 30.0,
                      color: Colors.white
                    ),
                    ),
                    padding: EdgeInsets.only(top:10.0,left: 220.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 220.0,top: 80.0),
                    child: RaisedButton(


                      child: Text('Get started',
                      style: TextStyle(
                        fontFamily: 'muli',
                      ),),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      onPressed: ()=>Navigator.pushNamed(context, '/fitness'),
                    ),
                  )
                ],
              )



          ),





          ]
        ),











       )
    );


  }
}