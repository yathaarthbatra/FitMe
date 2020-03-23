import 'package:flutter/material.dart';


class Getstarted1 extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
          children:<Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
            ),

            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(top:80.0),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                
                children: <Widget>[
                  
                 
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png'),
                    height: 85.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.bold
                        
                      ),
                    ),
                    

                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'FitMe',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Muli',
                      ),
                    ),
                    

                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Start your Healthy Life with us',
                      style: TextStyle(
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                  
                  Container(
                    
                      child: Image.asset('assets/images/training.png'),
                    


                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                 
                  Container(
                    
                    width: double.infinity,
                    height: 50.0,
                    padding: EdgeInsets.only(left:50.0,right:50.0),
                    
                    
                    
                    
                    child: RaisedButton(

                      onPressed:(){
                        Navigator.pushNamed(context, '/second');
                      },
                      elevation: 5.0,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Muli',
                        ),
                      ),
                      padding: EdgeInsets.all(5.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), 
                      color: Colors.purpleAccent,
                      
                      ),

                  ),

                ],
                ),
            ),

          ],
        ),
    );
      
    
  }
}