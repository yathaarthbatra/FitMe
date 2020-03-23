import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp1/services/auth.dart';

class YogaHome1 extends StatelessWidget {
  Authservices _auth=Authservices();
  List<Color> _colors=[Colors.purpleAccent,Colors.black87];
  List<double> _stops=[0.0,0.9];
  
  Widget Shading(){
    return Container(


      decoration: BoxDecoration(

        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:_colors,
          stops: _stops,

        ),




          borderRadius: BorderRadius.circular(25.0),
          shape: BoxShape.rectangle
      ),
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,

          title: Text('Stress'),
          actions: <Widget>[
            FlatButton.icon(onPressed: ()=>_auth.signout(), icon: Icon(Icons.person), label: Text('Logout')),
            FlatButton.icon(onPressed: (){Navigator.pushNamedAndRemoveUntil(context,'/home' , (Route<dynamic> route) => false);},
                icon: Icon(Icons.home),
                label: Text('Home'))

          ],
        ),


      body: Stack(
        children:<Widget>[
          Container(
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.darken,
              child: Image.asset(
                'assets/images/stress1.jpeg',

                fit: BoxFit.contain,
              ),
            ),

          ),




           Container(
             padding: EdgeInsets.only(top: 230.0),
      child: StaggeredGridView.count(
              crossAxisCount: 2,//two columns are there
            crossAxisSpacing: 12.0,//space between the columns
            mainAxisSpacing: 12.0,//space between the rows
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/yoga_1_1');
                },


                child: Stack(
                  children: <Widget>[
                    Shading(),
                    Center(
                      child: Text('GomuKhasna',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0
                      )
                      ),
                    )

                  ],
                )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/yoga_1_2');
                  },
                  child: Stack(
                    children: <Widget>[
                      Shading(),
                      Center(
                        child: Text('Shashankasn',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0
                            )
                        ),
                      )

                    ],
                  )

              ),
              GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Shading(),
                      Center(
                        child: Text('Ustrasana',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0
                            )
                        ),
                      )

                    ],
                  )
              ),
              GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Shading(),
                      Center(
                        child: Text('Sirhasna',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0
                            )
                        ),
                      )

                    ],
                  )
              ),



            ],
            staggeredTiles: [
              StaggeredTile.extent(1, 170.0),
              //mainaxisextent is actually the height of the cell
              //crossaxisextemt is actually the width of the cell
              StaggeredTile.extent(1, 300.0),
              StaggeredTile.extent(1, 300.0),
              StaggeredTile.extent(1, 170.0),

            ],


          ),
        ),

          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical:60.0,horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Stress Reduction',
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white
                  ),),
                Text('Techniques',
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white
                  ),),
              ],
            ),
          ),
    ]
      )

    );
  }
}
