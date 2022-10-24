
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "An App",
    home: Homepg(),
  )
  );
}
class Homepg extends StatefulWidget {
  const Homepg({Key? key}) : super(key: key);
  @override
  _HomepgState createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> with SingleTickerProviderStateMixin {
  TextEditingController _Mycont = TextEditingController();
  var myvar ="State less widget";
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(" Developer_Anonymous"),
        backgroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(56),
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:   SingleChildScrollView(

          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/my.jpg" ,fit: BoxFit.cover,),
                SizedBox(height: 20,),
                Text(
                  myvar,
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _Mycont,
                    cursorColor: Colors.orange,

                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                        )
                      ),
                      labelText: "NAME",
                      hintText: "ENTER in this field",
                      border: OutlineInputBorder(
                      ),
                    )

                  ),
                )


              ],


            ),

          ),



        ),
      )


      ,
      drawer: Drawer(

        child: ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(

              accountName: Text("Mr Artic Fox"),
              accountEmail: Text("wearedeveloper@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                NetworkImage("https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1171&q=80") ,

              ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,

              ),

            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search "),
              subtitle: Text("App finder"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Balance "),
              subtitle: Text("Your Amount"),
              trailing: Icon(Icons.navigate_before),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Accounts "),
              subtitle: Text("User's info"),
              trailing: Icon(Icons.arrow_back),
            ),


          ],


        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myvar = _Mycont.text;
          setState(() {

          });

        },
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.refresh),
      ),

    );
  }
}
