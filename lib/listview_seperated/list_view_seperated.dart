import 'package:flutter/material.dart';
class ListViewSeperateds extends StatelessWidget{
  
  const ListViewSeperateds({super.key});
  @override
  Widget build(BuildContext context){
    List names=["January","Advertisement","February","March","April","Advertisement","May","June","July","August","September","Advertisemnt","October"];
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        Color tileColors;
         
      if(index==1||index==6||index==11){
      tileColors= Colors.red;
      }
      else{
        tileColors=Colors.transparent;
      }
     return   ListTile(
      title: Text(names[index]),
      tileColor: tileColors,
     
    
     );
      }, separatorBuilder:(context, index) {
        return Divider();
      },  itemCount: 13),
    );
  }
}