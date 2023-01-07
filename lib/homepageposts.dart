import 'package:flutter/material.dart';
import 'package:stationeryapp/itempage.dart';

class HomePagePosts extends StatefulWidget {
  const HomePagePosts({super.key});

  @override
  State<HomePagePosts> createState() => _HomePagePostsState();
}

class _HomePagePostsState extends State<HomePagePosts> {
  final List _list = List.unmodifiable([
    {'assets/pic1.png'},
    {'assets/pic2.png'},
    {'assets/pic3.png'}
  ]);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
child: Column(children: [
  Container(
    alignment: Alignment.centerLeft,
    child: Text("Flash Sale",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),
  ),
  SizedBox(height: 12),
  GridView.count(physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    childAspectRatio: 0.7,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    shrinkWrap: true,
    children: [
      for(int i=1; i<9; i++)
      Container(
        padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 130, 190, 218),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(),));
          },
          child: Image.asset("assets/pic2.png",
          fit: BoxFit.contain,
          height: 50,
          width: 50,),
          
        ),
      const  SizedBox(
          height: 10,
        ),
        Container(alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  Text("Item Name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          const  SizedBox(
              height: 12
            ),
            Row(
              children: [
             Text("\$200",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.limeAccent,
                ),),
                SizedBox(height: 5),
                Text("/ 1 dozen",
                style: TextStyle(
                  fontSize: 16,
                ),),
                Spacer(),
                Icon(Icons.favorite_border,
                color: Colors.limeAccent,
                size: 28,
                )
              ],
            ),
          ],
        ),)
      ],),
      )
    ],)
],),
    );
  }
}