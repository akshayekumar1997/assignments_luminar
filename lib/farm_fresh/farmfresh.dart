
import 'package:assignments/farm_fresh/knowus.dart';
import 'package:assignments/farm_fresh/widgets/30minspolicy.dart';
import 'package:assignments/farm_fresh/widgets/best_selling_grid.dart';
import 'package:assignments/farm_fresh/widgets/bottomnav.dart';
import 'package:assignments/farm_fresh/widgets/categories.dart';
import 'package:assignments/farm_fresh/widgets/copyright.dart';
import 'package:assignments/farm_fresh/widgets/customers.dart';
import 'package:assignments/farm_fresh/widgets/ourblog.dart';
import 'package:assignments/farm_fresh/widgets/searchbar.dart';
import 'package:assignments/farm_fresh/widgets/shopbycategory.dart';
import 'package:assignments/farm_fresh/widgets/swiper.dart';
import 'package:flutter/material.dart';

class FarmFresh extends StatefulWidget {
  const FarmFresh({super.key});

  @override
  State<FarmFresh> createState() => _FarmFreshState();
}

class _FarmFreshState extends State<FarmFresh> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      bottomNavigationBar:MyBottomNav() ,
      
      appBar: AppBar(
         elevation: 0.0, // Set elevation to 0.0 to remove the shadow
          shadowColor: Colors.transparent,
    actions: [
       const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.location_on),
          Text("  Kochi"),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    ],
        backgroundColor: const Color.fromRGBO(10, 194, 17, 1),
        title: const Text("FARMERS FRESH ZONE",
        style: TextStyle(
          fontSize: 18,
         
          fontWeight: FontWeight.bold
        ),),
      )
  ,body: 

   SingleChildScrollView(
      child: Column(
        children: [
        
         const SearchBars(),
         const Categories(),
         Swippers(),
         //30 minutes container
         SizedBox(height: 20,),
         Container(
          padding: const EdgeInsets.only(left: 10,right: 10),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              ThirtyMinutes(imagen: "assets/images/farm_fresh/clock.jpg", text: "30 MINS POLICY"),
                 ThirtyMinutes(imagen: "assets/images/farm_fresh/phonegreen.jpg", text: "     TRACIBILITY"),
                    ThirtyMinutes(imagen: "assets/images/farm_fresh/outsource.jpg", text: "    LOCAL SOURCING")
            ,
            
            ],
          ),
         ),
         
         const Row(children:[
          SizedBox(width: 15,),
            Text("Shop by Category",
            style: TextStyle(
              
              fontSize: 25
            ),)
         
        ],

      ),
      const SizedBox(
        height: 15,
      ),
      const ShopByCategory(),
      const SizedBox(
        height: 10,
      ),
      Container(
        width: double.infinity,
        child:
      Image.asset("assets/images/farm_fresh/delicousgourment.jpg",
      fit: BoxFit.cover,
      ),
      ),
      const SizedBox(height: 15,),
       const Row(children:[
          SizedBox(width: 15,),
            Text("Best Sellig Products",
            style: TextStyle(
              
              fontSize: 15
            ),),
           
        ],

      ),
 
            const BestSellingGridView(),
              ElevatedButton(onPressed: () {
          
        }, child: const Text("VIEW MORE",
        style: TextStyle(color: Colors.white),),
        style:  ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Background color
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
    minimumSize: MaterialStateProperty.all<Size>(const Size(380, 20)), // Set the width and height of the button
    
    ),
  ),
  const 
  
  Row(children:[
    SizedBox(width: 15,),
  Text("Our Blog post",
  style: TextStyle(fontWeight: FontWeight.w600),)
  ]
  ),
  SizedBox(height: 18,),
 Blog(),
 Customer(),
 KnowUs(),
 SizedBox(height: 15,),
 Copyright()
            
        ]
      )
    )
  
    );
  }
}