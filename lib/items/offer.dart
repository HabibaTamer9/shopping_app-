import 'package:flutter/material.dart';

class Offer extends StatelessWidget{
  const Offer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height)*(0.3),
            width: MediaQuery.of(context).size.width,
            child: Image.network("https://i.pinimg.com/736x/30/26/df/3026df47db1de5faab51df6c3150f349.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(
            height:  (MediaQuery.of(context).size.height)*(0.3),
            width: MediaQuery.of(context).size.width,
            child: Image.network("https://i.pinimg.com/736x/66/a0/eb/66a0eb527827991fc6ac7480bd2da04f.jpg",fit: BoxFit.fill,),

          ),
          SizedBox(
            height:  (MediaQuery.of(context).size.height)*(0.3),
            width: MediaQuery.of(context).size.width,
            child: Image.network("https://i.pinimg.com/736x/f3/f4/83/f3f48388953c589d005677ff03f4d67b.jpg",fit: BoxFit.fill,),
          )
        ],
      ),
    );
  }
  
}