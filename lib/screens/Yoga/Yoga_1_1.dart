import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp1/services/auth.dart';

class YogaHome1a extends StatelessWidget {
  Authservices _auth=Authservices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,

        title: Text('Gomukhasna'),
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
            child: Image.asset('assets/images/gomukhasna.PNG'),
          ),
          Expanded(
            child: Markdown(
              data: 'HOW TO PERFORM\n'
                  '1. Sit erect on the ground with your legs stretched out in front of you, preferably in Dandasana.\n\n'
                  '2. Now gently bend your left leg, and place it under your right buttock.\n\n'
                  '3. Fold your right leg and place it over your left thigh.\n\n'
                  '4. Place both your knees close together as they are stacked one on top of the other.\n\n'
                  '5. Gently fold your left arm and place it behind your back.\n\n'
                  '6. Take your right arm over your right shoulder, and stretch it as much as you can until it reaches your left hand. With practice, you will be able to not just reach, but also catch your left hand.\n\n'
                  '7. Keep the trunk erect, expand your chest, and lean slightly back.\n\n'
                  '8. Hold this pose for as long as you are comfortable, as you breathe slowly and deeply. Concentrate on your breathing.\n\n'

                  'BENEFITS\n\n'
                  '1. This asana helps to flex the back, making it more elastic.\n\n'
                  '2. It helps to cure stiff shoulders and also helps in releasing the cervical spine.\n\n'
                  '3. Practicing the Gomukhasana also aids in the treatment of sciatica.\n\n'
                  '4. It enhances the working of the kidneys, thereby helping those suffering from diabetes\n\n'
                  ''
            ),
          ),



        ],
      ),
        )


    );
  }
}
