import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
 CustomGrid({super.key,required this.colors,required this.icons,this.text="Heart \nTicker"});
final Color ? colors;
final IconData ? icons;
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color: colors
      ),
      child: Column(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
            SizedBox(width: 5,),
            Icon(icons,
            size: 40,),
            SizedBox(width: 30,),
            Text("$text",
            style: TextStyle(
              fontSize: 20
            ),)
            ],
          )
        ],
      ),
    );
  }
}