import 'package:flutter/material.dart';
import 'package:stationeryapp/orderpage.dart';

class CartBottomBar extends StatefulWidget {
  const CartBottomBar({super.key});

  @override
  State<CartBottomBar> createState() => _CartBottomBarState();
}

class _CartBottomBarState extends State<CartBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color:const Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [ 
            Icon(Icons.discount,
              color: Color(0xFFFFB608),
              ),
              Text("Use coupons",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(162, 0, 0, 0),
              ),
              ),
            ],
          ),
          ),
        const  Divider(height: 25, thickness: 1),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total",
              style: TextStyle(
                fontSize: 23,
                color: Color.fromARGB(162, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 8),
              Text("\$470",
              style: TextStyle(
                fontSize: 23,
                color: Color(0xFFFFB608),
                fontWeight: FontWeight.bold,
              ),
              ),
              ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFB608),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("Check Out",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
       ],
        ),
        ],
      ),
    );
  }
}