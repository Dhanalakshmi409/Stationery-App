import 'package:flutter/material.dart';
import 'package:stationeryapp/login.dart';
import 'package:stationeryapp/signuppage.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: FirstPage(),
//   ));
// }

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPagestate();
}

class _FirstPagestate extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
               const Text("welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              const  SizedBox(
                  height: 20,
                ),
                Text("Do Subcribe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                ),)
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/welcome.jpeg")
                )
              ),
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Text("Login",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
                ),
                ),
              const SizedBox(height: 20),
               MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
               },
               
               color: Colors.blueAccent,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
               child: const Text("Sign Up",
               style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18
               ),
               ),
               ) ,
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}