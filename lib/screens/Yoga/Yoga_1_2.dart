import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp1/services/auth.dart';

class YogaHome1b extends StatelessWidget {
  Authservices _auth=Authservices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,

          title: Text('Shashankhasna'),
          actions: <Widget>[
            FlatButton.icon(onPressed: ()=>_auth.signout(), icon: Icon(Icons.person), label: Text('Logout')),
            FlatButton.icon(onPressed: (){Navigator.pushNamedAndRemoveUntil(context,'/home' , (Route<dynamic> route) => false);},
                icon: Icon(Icons.home),
                label: Text('Home'))

          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/shashan.PNG'),


              ),
              Expanded(
                child: Markdown(
                    data: 'Shashankasana or the “Hare Pose” is so called as the asana resembles a hare in the final position. Benefits of Shashankasana include relaxation, relieving of depression and a good upper body stretch. Shashankansa is a very easy asana to perform and can be done by anyone regardless of age.\n\n'
                        'HOW TO PERFORM\n\n'
                        'Sit in Vajrasana , the Thunderbolt pose or the kneeling pose. Place your hands on the thighs and breathe in a relaxed manner.\n\n'
                        'Raise both your hands above the head, palms facing forward. The arms should be in line with the shoulders.\n\n'
                        'Slowly bend down and bring the hands forward, till the hands and forehead touched the ground. Exhale while you are bending forward.\n'
                        'In the final position the forehead and hands rest on the ground.   Rest in this position for as long as you are comfortable. In the final  position slow rhythmic and relaxed breathing can be done.\n'
                        'Exhale slowly and come back to the starting position (kneeling pose).\n\n'
                        'Repeat this process for 5 to 10 rounds depending on time and comfort.\n\n'
                        'BENEFITS:\n\n'
                        'Relaxes and refreshes mind thereby boosts memory\n\n'
                        'reduces fatigue, anger and emotional instability\n\n'
                ),
              ),



            ],
          ),
        )


    );
  }
}
