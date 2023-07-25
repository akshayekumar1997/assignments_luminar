import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: 
Padding(padding: EdgeInsets.all(15),
child:
SingleChildScrollView(child: 
Column(

  children: [
    Column(
      children: [
        Container(
        
          height: 650,
         child:
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

        Text("Sign Up",style: TextStyle(
          fontSize: 50
        ),),
        Text("Create an Account it's free"),
        TextFormField(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    hintText: "Email id"
    ,prefixIcon: Icon(Icons.email)
  ),
  


        ),
          TextFormField(
            obscureText: true,
            obscuringCharacter: "*",
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    hintText: "Password"
    ,prefixIcon: Icon(Icons.visibility)
  ),
  

        ),
         TextFormField(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    hintText: "Re Enter password"
    ,prefixIcon: Icon(Icons.password)
  ),
  

        ),Container(
          width: double.infinity,
          child:
        ElevatedButton(
          
          onPressed: () {
          
        }, child: Text("Sign Up")
        ,style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      )
    ),),
        )
        )
      ],
    )
        )
  ],
),
])
)
)
    );
  }
}