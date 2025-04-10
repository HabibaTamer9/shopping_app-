import 'package:flutter/material.dart';
import 'package:shoping_app/items/section.dart';
import 'package:shoping_app/items/shoes.dart';
import 'package:shoping_app/items/skirt.dart';
import 'items/dress.dart';
import 'items/offer.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.bodyLarge
        ),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,size: 30,),
          color: Colors.white,),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_circle_outlined,size: 30,),
            color: Colors.white,
          )
        ],
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Offer(),
            Section(name: "Dress",),
            Dress(),
            Section(name: "Skirt"),
            Skirt(),
            Section(name: "Shoes"),
            Shoes()
        
          ],
        ),
      ),
    );
  }

}