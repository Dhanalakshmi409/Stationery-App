import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stationeryapp/cartpage.dart';
import 'package:stationeryapp/drawer.dart';
import 'package:stationeryapp/firstpage.dart';
import 'package:stationeryapp/homepage.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration:  BoxDecoration(
        color: Color.fromARGB(255, 54, 82, 209),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
  },
       child : Column(
            children:[
          Icon(Icons.home,
          color: Colors.amber,
          size: 32,),
          Text("home",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
          ),
          Column(
            children: [
          Icon(Icons.search,
          color: Colors.amber,
          size: 32,),
          Text("Explore",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
 InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
  },
   child: Column(
              children: [
            Icon(CupertinoIcons.cart,
            color: Colors.amber,
            size: 32,),
            Text("My Cart",
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
            ),
 ),
  InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerScreen()));
  },
       child :
 Column(
            children: [
          Icon(Icons.person,
          color: Colors.amber,
          size: 32,),
          Text("Account",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
  ),
 
        ],
      ),
    );
  }
}