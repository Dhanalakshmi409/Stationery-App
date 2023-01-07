import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomBar extends StatefulWidget {
  const ItemBottomBar({super.key});

  @override
  State<ItemBottomBar> createState() => _ItemBottomBarState();
}

class _ItemBottomBarState extends State<ItemBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 35,),
            ),
          ),
           GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 210,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
              ),
              child:const Text("Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23,
                letterSpacing: 1,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}