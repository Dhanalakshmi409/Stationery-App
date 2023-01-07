import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
   return Drawer(
    child: Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: Image.asset("assets/drawer1.jpeg"),
          accountName: Text("Name"),
          accountEmail: Text("e-mail"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("profile"),
            onTap: () {
              
            },
          ),
         ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
         ) ,
ListTile(
  leading: Icon(Icons.location_city),
  title: Text("Address"),
),
ListTile(
  leading: Icon(Icons.star),
  title: Text("Rate as"),
),
ListTile(
  leading: Icon(Icons.badge),
  title: Text("Order"),
),
ListTile(
  leading: Icon(Icons.phone),
  title: Text("contact as"),
),

      ],
    ),
   ); 
  }
}