import 'package:flutter/material.dart';
import 'package:shoping_app/items/card.dart';

class Skirt extends StatelessWidget {
  Skirt({super.key});
  final List<String> images =["https://i.pinimg.com/474x/5e/cf/51/5ecf519a6097a9dbc15004308a29de70.jpg","https://i.pinimg.com/474x/28/d3/5d/28d35d8bb60aee7b5480c8d5c64c7942.jpg","https://i.pinimg.com/474x/01/7b/1f/017b1f59e243f856ae873a09546716a8.jpg","https://i.pinimg.com/474x/2c/13/15/2c13150df08e4601db82586c1490f6ab.jpg"];
  final List<String> names =["Flour Skirt","Pink Skirt","Skirt with Elegant Lily Print","Falda Larga Elegante"];
  final List<String> prices =["320","290","210","250"];
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
