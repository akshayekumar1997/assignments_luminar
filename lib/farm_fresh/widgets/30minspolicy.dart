import 'package:flutter/material.dart';

class ThirtyMinutes extends StatelessWidget {
   ThirtyMinutes({super.key,required this.imagen,required this.text});
String imagen;
String text;
  @override
  Widget build(BuildContext context) {
    return
    Container(
      height: 100,
      child:
    
  Column(children:[
    
     Container(height: 30, width: 30,
    
      decoration: BoxDecoration(
        
        image: DecorationImage(image: AssetImage(imagen,
        
      ),
      fit: BoxFit.cover)
      )
     ),
     SizedBox(height: 7,),
     Text("$text",
     style: TextStyle(fontSize: 10),)
  ]
  )
      );
    
  }
}