import 'package:flutter/material.dart';
import 'package:stationeryapp/homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
  elevation: 0,
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  leading: IconButton(onPressed: (() {
    Navigator.pop(context);
  }), icon: Icon(Icons.arrow_back_ios,
  size: 20,
  color: Colors.black,),
  ),
),
body: SingleChildScrollView(
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 40),
    height: MediaQuery.of(context).size.height-50,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
Text("Sign Up",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20,),
        Text("Create an account, Its free",
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey ),
        ),
          ],
        ),
        Column(
          children: <Widget>[
            inputFile(label: "Username"),
            inputFile(label: "Email"),
            inputFile(label: "password",obscureText: true),
            inputFile(label: "Confirm Password",obscureText: true)
          ],
        ),
       Container(
        padding: EdgeInsets.only(
          top: 3,left: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border(
              bottom: BorderSide( color: Colors.black),
              top: BorderSide( color: Colors.black),
              left: BorderSide( color: Colors.black),
              right: BorderSide( color: Colors.black),
            ),
          ),
          child: MaterialButton(
              minWidth: double.infinity,
              height: 70,
              onPressed:  () {
                Navigator.push(context, MaterialPageRoute(builder:  (context) => HomeScreen()));
              },
              color: Colors.blueAccent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text("Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.white,
              ),),
              ),
          ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Already have an account?",style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
          Text("Login",style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),
          ),
        ],
       )
      ],
  ),
  ),
),
);
    
  }
}


Widget inputFile({label,obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.black87
      ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      )
    ],
  );
}