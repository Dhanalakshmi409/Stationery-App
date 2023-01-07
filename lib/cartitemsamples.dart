import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  const CartItemSamples({super.key});

  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i =1; i < 4; i++)
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
          child: Column(
            children: [
              Row(children: [
                Checkbox(
                  activeColor:const Color(0xFFFFB608),
                  value:checkedValue, 
                  onChanged: (newValue) {
                    setState(() {
                    checkedValue = newValue!;
                    });
                  },
                  ),
                  Container(
                     height: 70,
                    width: 70,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left: 5), 
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 230, 177),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                       ),
                      ],
                    ),  
                    child: Image.asset("assets/pic1.png",
                    fit: BoxFit.contain,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric( horizontal:10 ),
                  child: Column(
                        children:  [ 
                           Text("Item Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(162, 0, 0, 0),
                          ),
                          ),
                         const SizedBox(height: 12),
                          Row(
                            children: [ Text("\$150",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xFFFFB608),
                             ),
                             ),
                             SizedBox(width: 5),
                             Text("/5 boxes",
                             style: TextStyle(
                              fontSize: 15
                             ),
                             ),
                            ],
                          ),
                         ],
                  ),
                  ),
                 const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const  Icon(Icons.delete,
                  color: Colors.redAccent,
                  ),
               const SizedBox(height: 10),
                 Row(children: [
                  Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 85, 63, 214),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child:const Text("-",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                    ),
                  ),
                 Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text("01",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),),
                 ),
                  Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 85, 63, 214),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child:const Text("+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    ),
                  ),
                 ],
                 ),
                ],
              ),
              ],
              ),
        const SizedBox(height: 20),
         const Divider(thickness: 1),
          ],
          ),
        ),
      ],
    );
  }
}