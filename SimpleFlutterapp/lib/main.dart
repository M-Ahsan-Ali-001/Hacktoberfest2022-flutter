import 'package:app_pratice/Constants.dart';
import 'package:app_pratice/pages/Homepagee.dart';
import 'package:app_pratice/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async
{
WidgetsFlutterBinding.ensureInitialized();
Constant.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      title: "This is an app ",
      home: Constant.prefs.getBool("loggedIn")==true?HomePage():Login(),
      debugShowCheckedModeBanner: false,
    routes: {
        "/Home":(context)=>HomePage(),
      "/Login":(context)=>Login(),
    },
    )

  );

}
