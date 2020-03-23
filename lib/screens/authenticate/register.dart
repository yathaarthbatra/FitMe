import 'package:flutter/cupertino.dart';
import 'package:myapp1/screens/loading.dart';
import 'package:myapp1/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});//recieved parameter as function
  @override
  _Registerstate createState() => _Registerstate();
}

class _Registerstate extends State<Register> {

 final Authservices _auth= Authservices();
 final _formkey=GlobalKey<FormState>();
 String email='';
 String password='';
 String error='';//these are local state variables
 //variables used in drop downs below
 var child;
 var children;
 var height;
 var weight;
 var age;
 int group=1;
 String gender='Male';
 bool loading=false;



 @override
  Widget build(BuildContext context) {
    return loading? Loading():Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
           child: Image.asset('assets/images/pt1.png'),
           alignment: Alignment.topCenter,

           
          ),
          Container(
            child: Image.asset('assets/images/pt2.png'),
            alignment: Alignment.bottomCenter,
          ),
          //Our form starts from here
          Container(
            child:SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 170.0,horizontal: 25.0),
              child: Form(
                key: _formkey,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/images/logo1.png'),
                      alignment: Alignment.center,
                      height: 70.0,

                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Container(
                      child: Text(
                        'Sign Up/Register:',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold
                        ),
                      ),

                    ),

                    Container(
                      child: TextFormField(
                        onChanged: (val)=>email=val,
                        validator: (val)=>val.isEmpty?'Enter your Email':null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:15.0),
                          prefixIcon:Icon(
                            Icons.email,
                            color: Colors.black54,
                          ),
                          hintText: 'Username'
                        ),
                        
                      ),

                    ),
                    Container(
                      child: TextFormField(
                        onChanged: (val)=>password=val,
                      validator: (val)=>val.length<6?'Password should be atlest 6 characters long':null,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:15.0),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        hintText: 'Password'
                      ),
                      ),

                    ),
                    SizedBox(
                      height: 20.0,

                    ),
                    //here starts age height and gender
                    Container(
                      child: Text('Gender:',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Muli'
                      ),
                      ),
                    ),

                    //gender module starts below
                    Row(
                      children: <Widget>[
                        Expanded(

                          child: Image.asset('assets/images/male.png', height: 120.0),

                        ),
                        Expanded(

                          child: Image.asset('assets/images/female.png', height: 120.0),

                        )


                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 55.0,
                        ),


                      Radio(
                        value: 1,
                        groupValue: group,
                        onChanged: (T){
                          setState(() {
                            group=T;
                          });
                        },
                      ),
                      SizedBox(
                        width: 105.0,
                      ),

                      Radio(

                        value: 2,
                        groupValue: group,
                        onChanged: (T){
                          setState(() {
                            group=T;
                            gender='female';
                          });
                        },


                      ),

                    ],
                    ),

                    //Age module starts
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text('Age:',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                          ),

                          Expanded(
                            child:
                            Container(
                              padding: EdgeInsets.only(left:20.0,right: 150.0),
                              child: TextFormField(
                                onChanged: (val)=>age=val,
                                  validator: (val)=>val.isEmpty?'Please enter the age':null,
                                  keyboardType: TextInputType.number,
                                  //validator: (String value){
                                  //if (value.isEmpty)
                                  //{
                                  // return "Please enter age";
                                  //}
                                  //},
                                  decoration: new InputDecoration(
                                      hintText: "Age",
                                      fillColor: Colors.white,
                                      border: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(25.0),

                                      )
                                  )
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    //Height module starts
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text('Height (in ft):',style: TextStyle(
                              fontSize: 25.0
                            ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20.0),
                              
                              child: TextFormField(
                                onChanged:(val)=>height=val,
                                validator: (val)=>val.isEmpty?'Enter height':null,

                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Height',
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0)
                                  )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    //Weight module starts
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text('Weight (in Kg):',style: TextStyle(
                                fontSize: 25.0
                            ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20.0),

                              child: TextFormField(
                                onChanged:(val)=>weight=val,
                                validator: (val)=>val.isEmpty?'Enter Weight':null,

                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: 'Weight',
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30.0)
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),




                    Container(
                      padding: EdgeInsets.only(left:25.0,right:25.0),
                      width: double.infinity,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () async{

                          if(_formkey.currentState.validate()){

                           setState(() {
                             loading=true;
                           });
                            _auth.transfer(gender,age,height,weight);
                            dynamic result=await _auth.registerwithemailpassword(email, password);
                            if(result==null){
                              loading=false;
                              setState(() {
                                error='Error In Signing Up';
                              });
                            }



                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.purpleAccent,
                        ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(error,
                        style: TextStyle(
                            color: Colors.red
                        ),),
                    ),
                   
                    
                    SizedBox(
                      height: 20.0,

                    ),

                    
                    
                      Container(
                        padding: EdgeInsets.only(left:30.0,right:30.0),
                        width: double.infinity,
                        child:RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          onPressed:(){

                            widget.toggleView();
                          },
                          child: Text(
                            'Already a User-> Login',
                            style: TextStyle(fontSize: 15.0,color: Colors.white,fontFamily: 'Muli'),
                          ),
                          color: Colors.redAccent,
                          )
                      )
                  ],
                ),
              ),

            ),

          ),
        ],
      ),
    );
}
}