import 'dart:convert';

import 'package:app_pratice/Constants.dart';
import 'package:app_pratice/mydrawer.dart';
import 'package:flutter/material.dart';
import'package:http/http.dart' as http;



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;
  @override
  void initState()
  {
    super.initState();
    getData();
  }
  getData() async{

    var res = await http.get(url);
    data=jsonDecode(res.body);
    setState(() {
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer"),
        backgroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.vertical(
            bottom: Radius.circular(52)
          )
        ),
        actions: <Widget>[
          IconButton(onPressed: () {
            Constant.prefs.setBool("loggedIn", false);
            Navigator.pushReplacementNamed(context, "/Login");
          }, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: data!=null?ListView.builder(itemBuilder: (context,index)
            {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("Id :${data[index]["id"]}"),
               leading: Image.network(data[index]["url"]),
                ),
              
              );
              
            }
        ):Center(child: CircularProgressIndicator( color: Colors.cyan,))

      ),



      drawer:  MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}
        ,
        backgroundColor: Colors.teal,
        child: Icon(Icons.refresh),
      ),
      
    );
  }
}
