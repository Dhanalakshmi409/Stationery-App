import 'package:flutter/material.dart';
import 'package:stationeryapp/cartbottombar.dart';
import 'package:stationeryapp/cartitemsamples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back,
                size: 28,),
              ),
            const SizedBox(width: 12),
          const  Text("My Cart",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFB608),
            ),
            ),
          const  Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 219, 211, 211),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:const Color.fromARGB(255, 114, 111, 111).withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ), 
                ],
              ),
             child: const Icon(Icons.notifications,size: 30,
             color: Color(0xFFFFB608),
             ),
            ),
            ],
          ),
          ),
          Container(
            padding:const EdgeInsets.only(top: 4),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(
                  activeColor: const Color(0xFFFFB608),
                  title: const Text("Select all item",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  ),
                  value:checkedValue,
                   onChanged: (newValue){
                    setState(() {
                      checkedValue = newValue!;
                    });
                   },
                   controlAffinity: ListTileControlAffinity.leading,
                   ),
                const Divider(height: 30, thickness: 1),
                const CartItemSamples(),
                ],
            ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
               child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub-Total",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                   Text("\$450",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                  ],
                ),
                Divider(height: 20,thickness: 1,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                   Text("\$20",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                  ],
                ),
              const  Divider(height: 20,thickness: 1,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                   Text("-\$30",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                  ),
                  ],
                ),
               ],
               ),
            ),
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}