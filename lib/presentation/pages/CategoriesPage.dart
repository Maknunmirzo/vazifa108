import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thing/presentation/widgets/CategoriesItem.dart';
import 'package:thing/presentation/widgets/CategoriesMainItem.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/AppbarWidgetDetails.dart';
import '../widgets/bottomnavigationwindow.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<Widget> categoriesitems = [
    Categoriesmainitem(image: "assets/categories/seafood.png", title: "Seafood"),
    CategoriesItem(image: "assets/categories/lunch.png", text: "Lunch"),
    CategoriesItem(
      image: "assets/categories/breakfast.png",
      text: "Breakfast",
    ),
    CategoriesItem(
      image: "assets/categories/dinner.png",
      text: "Dinner",
    ),
    CategoriesItem(
      image: "assets/categories/vegan.png",
      text: "Vegan",
    ),
    CategoriesItem(
      image: "assets/categories/dessert.png",
      text: "Dessert",
    ),
    CategoriesItem(
      image: "assets/categories/drinks.png",
      text: "Drinks",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff1C0F0D),
      appBar: AppbarwidgetCategories(
        title: "Categories",
      ),
      bottomNavigationBar: Bottomnavigationwindow(),
      body: ListView(children: [
        categoriesitems[0],
        SizedBox(
          height: 10,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: categoriesitems.length-1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
            crossAxisSpacing: 39
          ),
          itemBuilder: (context, index) => categoriesitems[index+1],
        ),
      ]),
    );
  }
}
