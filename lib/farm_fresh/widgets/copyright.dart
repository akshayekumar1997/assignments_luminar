import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  children: [
    SizedBox(
      height: 5,
    ),
    Text(" Copyright @ 2021 Farmer Fresh Zone",
    style: TextStyle(
      color: Colors.white
    ),),
    Text("All rights recieved",
    style: TextStyle(
      color: Colors.white
    ),)
  ],
),
      height: 60,
      width: double.infinity,
      color:  const Color.fromRGBO(10, 194, 17, 1),
    );
  }
}