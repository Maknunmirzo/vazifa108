import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thing/presentation/widgets/CategoriesItem.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/AppbarWidgetDetails.dart';
import '../widgets/bottomnavigationwindow.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1C0F0D),
        appBar:AppbarwidgetCategories(title: "Categories",),
        bottomNavigationBar: Bottomnavigationwindow() ,
    body: Column(

    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    children: [
    Text(
    "Seafood",
    style: TextStyle(color: Colors.white,
    fontSize: 15,
    decoration: TextDecoration.none),
    ),
    SizedBox(height: 10,),
    Center(
    child: SizedBox(
    width: 356,
    height: 149,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.asset(
    "assets/categories/seafood.png",
    fit: BoxFit.cover,
    )
    ),
    ),
    ),

    ],
    )
    ,
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    CategoriesItem(image: "assets/categories/lunch.png", text: "Lunch"),
    CategoriesItem(
    image: "assets/categories/breakfast.png", text: "Breakfast",),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    CategoriesItem(image: "assets/categories/dinner.png", text: "Dinner",),
    CategoriesItem(image: "assets/categories/vegan.png", text: "Vegan",),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    CategoriesItem(image: "assets/categories/dessert.png", text: "Dessert",),
    CategoriesItem(image: "assets/categories/drinks.png", text: "Drinks",),
    ],
    ),
    ]
    ,
    )
    ,
    );
  }
}


