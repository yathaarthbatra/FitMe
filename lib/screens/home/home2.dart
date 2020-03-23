import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
         body: Container(
        
        
      child: SingleChildScrollView(
        
      
         child: Column(
           children: <Widget>[
             Stack(
               
              
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
                   Container(
                       padding: EdgeInsetsDirectional.only(top:80.0),
                       child: Stack(
                         children: <Widget>[
                           Container(
                             child: Image.asset('assets/images/final.png'),
                           ),
                           Container(
                             
                             padding: EdgeInsets.only(left: 220.0,top: 130.0),
                             child: Text('Yoga Training',
                             style: TextStyle(
                               
                               fontSize: 30.0,
                               color: Colors.white,
                             ),
                             ),

                           ),
                           Container(
                             child: RaisedButton(
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                               onPressed: (){ Navigator.pushNamed(context, '/yoga');},
                               child: Text('Get Started'),
                               ),
                               padding: EdgeInsets.only(left: 220.0,top: 195.0),

                           ),
                          
                          
                             
                      
                         ],

                       ),

                     ),
                     
                    //1st module ends

                    //2nd module starts
                  Container(
                   padding: EdgeInsetsDirectional.only(top:210.0),
                   child: Stack(
                     children: <Widget>[
                       Container(
                         child: Image.asset('assets/images/final3.png'),
                       ),
                       Container(
                         
                         padding: EdgeInsets.only(left: 220.0,top: 130.0),
                         child: Text('Gym Training',
                         style: TextStyle(
                           
                           fontSize: 30.0,
                           color: Colors.white,
                         ),
                         ),

                       ),
                       Container(
                         
                       
                         child: RaisedButton(
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           
                           onPressed: (){  Navigator.pushNamed(context, '/gym'); },
                           child: Text('Get Started'),
                           ),
                           padding: EdgeInsets.only(left: 220.0,top: 195.0),

                       ),
                      
                      
                         
                     
                     ],

                   ),

                    ),
                    //3rd module starts
                    Container(
                   padding: EdgeInsetsDirectional.only(top:340.0),
                   child: Stack(
                     children: <Widget>[
                       Container(
                         child: Image.asset('assets/images/final2.png'),
                       ),
                       Container(
                         
                         padding: EdgeInsets.only(left: 220.0,top: 130.0),
                         child: Text('Diets Plan ',
                         style: TextStyle(
                           
                           fontSize: 30.0,
                           color: Colors.white,
                         ),
                         ),

                       ),
                       Container(

                         child: RaisedButton(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){},
                           child: Text('Get Started'),
                           ),
                           padding: EdgeInsets.only(left: 220.0,top: 195.0),

                       ),
                      
                      
                         
                     
                     ],

                   ),

                    ),
                    //4th module starts
                    Container(
                 padding: EdgeInsetsDirectional.only(top:495.0),
                 child: Stack(
                   children: <Widget>[
                     Container(
                       child: Image.asset('assets/images/final1.png'),
                     ),
                     Container(
                       
                       padding: EdgeInsets.only(left: 220.0,top: 105.0),
                       child: Text('Fitness Plan ',
                       style: TextStyle(
                         
                         fontSize: 30.0,
                         color: Colors.white,
                       ),
                       ),

                     ),
                     Container(
                       child: RaisedButton(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                         onPressed: (){},
                         child: Text('Get Started'),
                         ),
                         padding: EdgeInsets.only(left: 220.0,top: 172.0),

                     ),
                    
                    
                       
                   
                   ],

                 ),

                  )

                  
                     
                  ],
                ),
                Container(
                  child: Text('Made with Love'),
                  padding: EdgeInsets.only(top:0.0),
                
                ),
                
           ],
         ),
      ),
          ),
      );
      
    
  }
}