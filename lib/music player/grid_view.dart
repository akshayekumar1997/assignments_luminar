import 'package:flutter/material.dart';
class GridTiles extends StatelessWidget {
  final String? imageName;

  GridTiles({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imageName ?? ""),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
         
        ),
      ),
    );
  }
}
