import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:myapp1/models/database%20model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class account1 extends StatelessWidget {

  Widget BMI(double height,double weight,String gender,String email,String age) {
    String gendertype;
      double m=height/3.2808;
      double bmi=(weight/(m*m));
      String bodytype;
      if((bmi>=18.5) && (bmi<=25))
        bodytype='Normal Weight';
      else if(bmi>=25 && bmi<=30)
        bodytype='Overweight';
      else if(bmi>=30 && bmi<=40)
        bodytype='Obesity';
      else if(bmi>40)
        bodytype='Morbid Obesity';
      else
        bodytype='UnderWeight';
      if(gender=='Male')
        gendertype='assets/images/profile_male.png';
      else
        gendertype='assets/images/profile_female.png';



    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 25.0),
      child: Column(

        children: <Widget>[
          Container(
            child: Column(//image and email starts
              children: <Widget>[
                Container(
                  child: Image.asset(gendertype),
                  height: 200.0,
                ),
                //email module starts
                Container(
                  child: Text('Logged in as ${email}',
                  style: TextStyle(
                    fontSize: 17.0
                  ),),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),

          //Details module starts
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Age',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'muli',
                color: Colors.white
              ),
              ),
              Text('Height',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'muli',
                    color: Colors.white
                ),
              ),
              Text('Weight',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'muli',
                    color: Colors.white
                ),
              ),

            ],
          ),
          SizedBox(
            height: 15.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('${age}yrs',
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),
              Text('${height}ft',
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),
              Text('${weight}kg',
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),

            ],
          ),
          SizedBox(
            height: 40.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('BMI index',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'muli',
                    color: Colors.white
                ),
              ),
              Text('Body Status',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'muli',
                    color: Colors.white
                ),
              ),

            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('${bmi.toInt()}',
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('${bodytype}',
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),

            ],
          ),
          SizedBox(
            height: 100.0,
          ),





        ],
      ),
    );






  }






  @override
  Widget build(BuildContext context) {
    final users=Provider.of<List<DatabaseModel>>(context)??[];//this user will contain
    //the collection of database models(documents)
    //this user contains list of documents
    //to convert the list documents into widgets we use ListViw.Builder
    return Stack(
      children:<Widget>[
        Container(
          child: Image.asset('assets/images/profile_background.jpg',fit: BoxFit.cover,),
          height: double.infinity,
          width: double.infinity,
        ),

        ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          return BMI(double.parse((users[index].height).toString()),double.parse(users[index].weight.toString()),users[index].gender,users[index].email,users[index].age) ;
        },
      ),
      ]
    );





        }
  }

