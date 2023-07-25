import 'package:assignments/gridview/custom_grid.dart';
import 'package:flutter/material.dart';
class Grid extends StatefulWidget{
  const Grid({super.key});

  @override
 State<Grid> createState()=>_GridState();
  
}
class 
 _GridState extends State<Grid>{
  @override
  double height=50;
  double width=100;
  Widget build (BuildContext context){
    return Scaffold(
      body:
      Padding(padding: EdgeInsets.only(left: 20,right: 20),
      child:
       
       GridView.count(crossAxisCount: 2,
       mainAxisSpacing: 15,
       crossAxisSpacing: 15,
       childAspectRatio:width/height,
     
      children: [
     

        CustomGrid(colors: Colors.blue, icons: Icons.home
 
        ),
        CustomGrid(colors: Colors.orange, icons: Icons.notification_important
        ),
        CustomGrid(colors: Colors.green, icons: Icons.camera
 
        ),
        CustomGrid(colors: Colors.pink, icons: Icons.star
        ),
        CustomGrid(colors: Colors.red, icons: Icons.heart_broken
 
        ),
        CustomGrid(colors: Colors.lightBlue, icons: Icons.file_copy
        ),
        CustomGrid(colors: Colors.cyanAccent, icons: Icons.home
 
        ),
        CustomGrid(colors: const Color.fromARGB(255, 83, 160, 223), icons: Icons.message
        ),
        CustomGrid(colors: Colors.yellow, icons: Icons.logo_dev
 
        ),
        CustomGrid(colors: Colors.deepOrange, icons: Icons.abc
        ),
         CustomGrid(colors: Colors.redAccent, icons: Icons.ac_unit
        ),
          CustomGrid(colors: Colors.lightGreen, icons: Icons.abc
        ),
       
      ],
      )
      ,
      )
    );
  }
}