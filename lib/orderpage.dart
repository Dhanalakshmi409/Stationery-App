import 'package:flutter/material.dart';
import 'package:stationeryapp/ordernow.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(20),
            child: InkWell(onTap: () {
              Navigator.pop(context);
            },
            child:const Icon(Icons.arrow_back,
            size: 28,
            ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              alignment: Alignment.centerLeft,
              child:const Text("Fill Order Details",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(162, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "First Name",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Last Name",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Address",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "City",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
             Container(
              margin:const EdgeInsets.only(left: 15,top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Postal/Zip Code",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
          const SizedBox(height: 50),
             InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderNow(),));
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color:const Color(0xFFFFB608),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("Order Now",
                style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                ),),
              ),
            )
          ],
          ),
        ],
      ),
    );
  }
}