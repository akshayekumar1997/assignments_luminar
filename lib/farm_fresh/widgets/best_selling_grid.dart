import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
    children: [
      BestContainer(images: "assets/images/farm_fresh/tomato.jpg", title: "Tomato (450-550) g", price: "Rs 30", box: "NOS"), BestContainer(images: "assets/images/farm_fresh/greenapple.jpg", title: "Tomato \n250 g", price: "Rs 30", box: "NOS"),
       BestContainer(images: "assets/images/farm_fresh/carrot.jpg", title: "Tomato \n250 g", price: "Rs 30", box: "NOS"),
        BestContainer(images: "assets/images/farm_fresh/apple.jpg", title: "Tomato \n250 g", price: "Rs 30", box: "NOS")
        , BestContainer(images: "assets/images/farm_fresh/ladiesfinger.jpg", title: "Tomato \n250 g", price: "Rs 30", box: "NOS")
        , BestContainer(images: "assets/images/farm_fresh/tomato.jpg", title: "Tomato \n250 g", price: "Rs 30", box: "NOS")
    ],
    );
  }
}
class BestContainer extends StatelessWidget {
   BestContainer({super.key,required this.images,required this.title,required this.price,required this.box,this.strikeText});
String  images;
String title;
String price;
String? strikeText;
String box;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          
         Row(children:[ 
          SizedBox(width: 
          20,),Image.asset(images,
        height: 60,),
         ]
         ),
        Row(children:[
        SizedBox(width: 10,),
        Text(title,
        style: TextStyle(fontWeight: FontWeight.w600,
        ),),
        ]
        ),
        SizedBox(height: 5,),
        Row(children: [
          SizedBox(width: 20,),
          Text(price),
          SizedBox(width: 5,),
        Text(
  strikeText != null ? strikeText! : '', // If strikeText is not null, use its value, otherwise use an empty string
  style: TextStyle(decoration: TextDecoration.lineThrough),
)

        ],),

        Row(children:[
        SizedBox(width: 10,),
        Text("1.00 $box"),
        SizedBox(width: 5,),
        ElevatedButton(onPressed: () {
          
        }, child: Text("ADD",
        style: TextStyle(color: Colors.white),),
        style:  ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Background color
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
    minimumSize: MaterialStateProperty.all<Size>(Size(20, 20)), // Set the width and height of the button
    
    ),
  ),
        ]
      
      ),
        ]
      )
    );
  }
}