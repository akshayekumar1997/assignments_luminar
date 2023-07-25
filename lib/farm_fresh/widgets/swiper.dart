import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
class Swippers extends StatelessWidget {
   Swippers({super.key});
  List<String>images=["assets/images/farm_fresh/ima.jpg",
  "assets/images/farm_fresh/fruits.jpg",
  "assets/images/farm_fresh/ima.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child:
    
    Swiper(
        itemBuilder: (context, index) {
          
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: images.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
    )
      );
  }

}