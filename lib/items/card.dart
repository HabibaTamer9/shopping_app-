import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key,required this.image,required this.name,required this.price});
  final String image;
  final String name;
  final String price;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool iconcolor =true;
  Widget iconchange =Icon(Icons.favorite_border_outlined);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 160,
      width:(MediaQuery.of(context).size.width)*(0.9),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey,width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
      children: [
      // Image section
      Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Image.network(widget.image, fit: BoxFit.cover),
      ),

      SizedBox(width: 12),

      // Text & Icon section
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                ),
                IconButton(icon:iconchange,onPressed: (){setState(() {
                  iconcolor = !iconcolor;
                  if(!iconcolor) {
                    iconchange = Icon(Icons.favorite,color: Colors.teal);
                  }else{
                    iconchange =Icon(Icons.favorite_border_outlined);
                  }
                });},
                  iconSize: 28,
                ),
              ],
            ),

          ],
        ),
      ),
      ],
    ),

    )


    );
  }
}
