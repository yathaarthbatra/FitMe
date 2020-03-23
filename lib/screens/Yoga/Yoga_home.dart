import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/services/auth.dart';

void main()=>runApp(YogaHome());

class YogaHome extends StatelessWidget {
  Authservices _auth=Authservices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Yoga'),
        actions: <Widget>[
          FlatButton.icon(onPressed: ()=>_auth.signout(), icon: Icon(Icons.person), label: Text('Logout')),
          FlatButton.icon(onPressed: (){Navigator.pushNamedAndRemoveUntil(context,'/home' , (Route<dynamic> route) => false);},
              icon: Icon(Icons.home),
              label: Text('Home'))

        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            child: Image(

              image: AssetImage('assets/images/Yoga_1.png'),
            )
          ),


          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/yoga_1');
            },
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/types.png'),
                  ),
                  Padding(

                    child: Text('Stress Reduction',
                    style: TextStyle(
                      fontSize: 20.0,
                        fontFamily: 'muli'
                    ),
                    ),
                    padding: EdgeInsets.only(left:20.0,top: 50.0),
                  )
                ],
              ),
            ),
          ),


          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/yoga_2');
            },
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/types.png'),
                  ),
                  Padding(

                    child: Text('Digestion',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'muli'
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20.0,top: 50.0),
                  )
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/yoga_3');
            },
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/types.png'),
                  ),
                  Padding(

                    child: Text('Balance',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'muli'
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20.0,top: 50.0),
                  )
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/yoga_4');
            },
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/types.png'),
                  ),
                  Padding(

                    child: Text('Strength',
                      style: TextStyle(
                          fontSize: 20.0,
                        fontFamily: 'muli'
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20.0,top: 50.0),
                  )
                ],
              ),
            ),
          ),




        ],
      ),




    );
  }
}
