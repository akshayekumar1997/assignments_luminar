import 'package:flutter/material.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    GridView.count(crossAxisCount: 3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 20,
    padding: EdgeInsets.all(15),
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
    children: [
     ShopContainer(imagesShop: "assets/images/farm_fresh/offer.jpg", textShop: "Offers"),
      ShopContainer(imagesShop: "assets/images/farm_fresh/tomat.jpg", textShop: "Vegetables"),
       ShopContainer(imagesShop: "assets/images/farm_fresh/pine.jpg", textShop: "Fruits"),
        ShopContainer(imagesShop: "assets/images/farm_fresh/brocolli.jpg", textShop: "Exotic"),
         ShopContainer(imagesShop: "assets/images/farm_fresh/carrot.jpg", textShop: "Fresh Cuts")
         , ShopContainer(imagesShop: "assets/images/farm_fresh/microgreens.jpg", textShop: "Nutrition Charges"),
         ShopContainer(imagesShop: "assets/images/farm_fresh/apple.jpg", textShop: "Fruits")
         , ShopContainer(imagesShop: "assets/images/farm_fresh/tomat.jpg", textShop: "Vegetables")

    ],
    );
  }
}
class ShopContainer extends StatelessWidget {
  ShopContainer({super.key,required this.imagesShop,required this.textShop});
String imagesShop;
String? textShop;
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 100,width: 100,
decoration: BoxDecoration(
  
  borderRadius: BorderRadius.circular(20)
),
child: Column(
  children: [
    Expanded(child: 
     ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          child:
 Image.asset(
        imagesShop, // Use the variable without quotes and $
        fit: BoxFit.fill,
        height: 50,
      ),
    ),
    ),
  Text("$textShop"),
  SizedBox(height: 10,)

  ],
),
    );
  }
}