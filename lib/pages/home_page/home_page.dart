import 'package:assignments/pages/home_page/sign_up_page.dart';
import 'package:assignments/pages/log_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        
        child: 
       Align(
        alignment: Alignment.center,
        child: Container(
          
         
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
              "Hello There!",
              style: TextStyle(
                fontSize: 50
              ),),
              Text("Automatically identify verification to enable you to verify your identity")
           , Image.asset("assets/images/computer.jpg",
           height: 250,),
         
           ElevatedButton(
            style:
            ButtonStyle(
              
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
             minimumSize:  MaterialStateProperty.all<Size>(Size(270, 48)), // Set the width and height
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Set the border radius
      ),
    ),
            ),
            onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
           }, child: Text("Login")),
            ElevatedButton(
            style:
            ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              minimumSize: MaterialStateProperty.all<Size>(Size(270, 48)), // Set the width and height
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Set the border radius
      ),
    ),
            ),
            onPressed: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
         return SignUpPage();
       },));
           }, child: Text("SignUp"))
            ]
             )   
        )
      ),
      )
    );
  }
}