import 'package:flutter/material.dart';
 class OrderNow extends StatefulWidget {
  const OrderNow({super.key});

  @override
  State<OrderNow> createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  @override
  Widget build(BuildContext context) {
      return  Container(
          child: Padding(padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const  Text("Your Order has been Success",
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
              color: Colors.white,),),
              Image.asset("assets/success1.png"),
            ],
          ),),
      );
    
  }
}