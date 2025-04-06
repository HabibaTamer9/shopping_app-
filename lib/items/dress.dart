import 'package:flutter/material.dart';
import 'package:shoping_app/items/card.dart';

class Dress extends StatelessWidget {
  Dress({super.key});
  final List<String> images =["https://i.pinimg.com/474x/fc/45/2e/fc452e15866b5edd5639d4b5e7c03805.jpg","https://i.pinimg.com/474x/37/7d/b0/377db0f920cbc21be858b7785c7c5d76.jpg"];
  final List<String> names =["Green dress","Red dress"];
  final List<String> prices =["500","290"];
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      height:170,
      width:(MediaQuery.of(context).size.width),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context , i){
          return Cards(image: images[i], name: names[i], price: prices[i]);
        }
      ),
    );
  }
}
