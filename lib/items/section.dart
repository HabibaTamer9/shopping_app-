import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({super.key,required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: Theme.of(context).textTheme.bodyMedium,),
          Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
