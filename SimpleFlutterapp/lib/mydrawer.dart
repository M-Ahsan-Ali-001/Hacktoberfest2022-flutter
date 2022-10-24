import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget> [
          UserAccountsDrawerHeader(

              accountName: Text("Mr Fox"),
              accountEmail: Text("Emial12@rocket.io"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1462953491269-9aff00919695?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,

            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text("Account"),
            subtitle: Text("User's data"),
            trailing: Icon(Icons.send),

          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text("Search"),
            subtitle: Text("Find Data"),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("Chat"),
            subtitle: Text("talk with developer"),
            trailing: Icon(Icons.send),

          ),


        ],
      ),




    );
  }
}
