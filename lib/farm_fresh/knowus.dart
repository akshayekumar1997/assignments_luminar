import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class KnowUs extends StatelessWidget {
  const KnowUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(children:[
        Text("  Get to know Us",
        style: TextStyle(fontWeight: FontWeight.w500),)
        ]
        ),
        SizedBox(height: 12,),
        Row(
          children: [
            Text("  About Us  | Our Farmers  |  Blog")
          ],
        ),
        SizedBox(height: 20,),
         Row(children:[
        Text("  Useful Links",
        style: TextStyle(fontWeight: FontWeight.w500),)
        ]
        ),
        SizedBox(height: 12,),
        Row(
          children: [
            Text("    Privacy Policy      | Return and Refund Policy      |    Terms and condition",
            style: TextStyle(
              fontSize: 10
            ),)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
            FaIcon(FontAwesomeIcons.twitter),
            FaIcon(FontAwesomeIcons.youtube),
             FaIcon(FontAwesomeIcons.facebook),
              FaIcon(FontAwesomeIcons.instagram)
          ],
        )
      ],
      
    );
  }
}