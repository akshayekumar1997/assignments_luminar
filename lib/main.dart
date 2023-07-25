import 'package:assignments/farm_fresh/farmfresh.dart';
import 'package:assignments/gridview/grid.dart';
import 'package:assignments/listview_seperated/list_view_seperated.dart';
import 'package:assignments/music%20player/music_player.dart';
import 'package:assignments/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
void main(){
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
home: FarmFresh()
    );
  }
}