import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color:  Color.fromRGBO(10, 194, 17, 1)),
      padding: EdgeInsets.all(11),
      child: TextFormField(
        
        decoration: InputDecoration(
          hintText: "Search for vegetables..fruits ..",
          
          prefixIcon: Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3))
          ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, ),
          
        ),
      ),
    );
  }
}