import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
   CategoryContainer({super.key,required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:80,
      height: 35,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 240, 240),

        borderRadius: BorderRadius.circular(30)
      ),
      child: Center(
        child: Text(text,
        style: TextStyle(color: Colors.green,
        fontWeight: FontWeight.bold),
        ),
        ),
      
    );
  }
}