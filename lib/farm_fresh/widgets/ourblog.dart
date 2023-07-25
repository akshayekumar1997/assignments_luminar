import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class BlogContainer extends StatelessWidget {
  BlogContainer({super.key,required this.image,required this.text});
String image;
String text;
  @override
  Widget build(BuildContext context) {
    return
    
     Container(
      height: 220,
      width: 150,
      
      child: Column(
        children: [
          Container(height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(image: 
            AssetImage(image),fit: BoxFit.contain)
          ),),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text(text,style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 10,),
            Text("a year ago"),
            SizedBox(width: 40,),
            Icon(
              Icons.arrow_right_alt,color: Colors.green,
              
            )
          ],)
        ],
      ),
    );
  }
}
class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: [
BlogContainer(image: "assets/images/farm_fresh/microgreens.jpg", text: "Control Blood \nPressure, the rl")
,BlogContainer(image: "assets/images/farm_fresh/brocolli.jpg", text: "five resons why\n vroccoli should"),
BlogContainer(image: "assets/images/farm_fresh/kiwi.jpg", text: "Control Blood \nPressure, the rl"),
BlogContainer(image: "assets/images/farm_fresh/brocolliblog.jpg", text: "Control Blood \nPressure, the rl"),
BlogContainer(image: "assets/images/farm_fresh/apple.jpg", text: "Control Blood \nPressure, the rl")
    ], options: CarouselOptions(
      autoPlay: true,
      viewportFraction: .4
    ));
  }
}