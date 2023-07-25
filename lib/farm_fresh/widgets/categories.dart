import 'package:assignments/farm_fresh/widgets/categoriescontainer.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(color: Colors.white),
child: ListView(
  scrollDirection: Axis.horizontal,
  children: [
    Row(
  
      children:[
    CategoryContainer(text:"OFFERS" ),
    SizedBox(width: 10,),
     CategoryContainer(text:"VEGETABLE" ),
      SizedBox(width: 10,),
      CategoryContainer(text:"FRUITS" )
      ,  SizedBox(width: 10,),CategoryContainer(text:"EXOTIC" )
      ,  SizedBox(width: 10,),CategoryContainer(text:"vegetables" ),
       CategoryContainer(text:"vegetables" )
  ],
),]
)
    );
  }
}