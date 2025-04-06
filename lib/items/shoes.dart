import 'package:flutter/material.dart';
import 'package:shoping_app/items/card.dart';

class Shoes extends StatelessWidget {
  Shoes({super.key});
  final List<String> images =["https://i.pinimg.com/474x/09/dd/50/09dd5051322e7d8ca126235e9a0c1026.jpg","https://i.pinimg.com/474x/5e/44/e4/5e44e4961cab6d324dc02f5f4c10aa3e.jpg"];
  final List<String> names =["striped sweater","Black Heels"];
  final List<String> prices =["230","200"];
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      height: 170,
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
