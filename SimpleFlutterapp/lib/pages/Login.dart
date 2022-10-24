import 'package:app_pratice/Constants.dart';
import 'package:flutter/material.dart';

import '../bgimage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.withOpacity(0.5),

      appBar: AppBar(
        title: Center(child: Text("Developer",)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(52),
          )
        ),
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BGimage(),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Form(child:Column(
                              children: <Widget>[

                                TextFormField(

                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    hintText: "Enter your name",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal,
                                    )
                                  )
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(

                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    hintText: "Enter your password",
                                    border: OutlineInputBorder(

                                        borderSide: BorderSide(

                                        color: Colors.red,
                                      )

                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      )
                                    )

                                  ),
                                  
                                ),
                                SizedBox(
                                  height: 5,

                                ),
                                RaisedButton(onPressed: (){
                                  Constant.prefs.setBool( "loggedIn",true);
                                  Navigator.pushReplacementNamed(context, "/Home");

                                },
                                  color: Colors.teal,
                                child: Text("LogIn",style: TextStyle( color: Colors.white),),)


                              ],
                            )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
