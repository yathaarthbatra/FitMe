import 'package:flutter/cupertino.dart';
import 'package:myapp1/screens/loading.dart';
import 'package:myapp1/services/auth.dart';
import 'package:flutter/material.dart';


class SignIn1 extends StatefulWidget {
  final Function toggleView;
  SignIn1({this.toggleView});

  @override
  _SignInState1 createState() => _SignInState1();
}

class _SignInState1 extends State<SignIn1> {

  
 final Authservices _auth= Authservices();
 final _formkey=GlobalKey<FormState>();
 String email='';
 String password='';
 String error='';//these are local state variables
 bool loading=false;


  @override
  Widget build(BuildContext context) {
    return loading ? Loading():Scaffold(
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
                        'Already a member ?',
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
                        validator: (val)=>val.length<6?'Password should be atleast of 6 characters long':null,
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
                      height: 10.0,

                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password'
                      ),

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
                          dynamic result= await _auth.signINwithemailpassword(email, password);
                          if(result==null){
                            loading=false;
                            setState(() {
                              error='Error Signing In , Make sure your credentials are correct or have a account';
                            });
                          }

                          }
                        },
                        child: Text(
                          'Sign In',
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
                     
                    Container(
                      padding: EdgeInsets.only(top:10.0),
                      alignment: Alignment.center,
                      child:Text(
                        'OR'
                      )
                    ),SizedBox(height: 10.0,),
                    SizedBox(
                      height: 5.0,

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
                            'New User? Sign Up->',
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