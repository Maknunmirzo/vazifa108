import 'package:flutter/material.dart';

import 'package:thing/presentation/widgets/AppbarWidgetDetails.dart';

import '../../widgets/RecentlyAddedItem.dart';
import '../../widgets/bottomnavigationwindow.dart';

class BreakfastPage extends StatelessWidget {
   BreakfastPage({super.key});
 final List<Widget> Retcepts=[

  RecentlyAddedItem(image: "assets/categories_details/breakfast/eggs_benedict.png", title: "Eggs Benedict", description: "Muffin with Canadian bacon", rating: "5", time: "15min"),
  RecentlyAddedItem(image: "assets/categories_details/breakfast/french_toast.png", title: "French Toast", description: "Delicious slices of bread", rating: "5", time: "20min"),

   RecentlyAddedItem(image: "assets/categories_details/breakfast/oatmeal_and_nut.png", title: "Oatmeal and Nut ", description: "Wholesome blend for breakfast", rating: "4", time: "35min"),
   RecentlyAddedItem(image: "assets/categories_details/breakfast/still_life_potato.png", title: "Still Life Potato", description: "Earthy, textured, rustic charm", rating: "4", time: "30min"),

   RecentlyAddedItem(image: "assets/categories_details/breakfast/oatmeal_granola.png", title: "Oatmeal Granola", description: "Strawberries and Blueberries", rating: "4", time: "30min"),
   RecentlyAddedItem(image: "assets/categories_details/breakfast/sunny_bruschetta.png", title: "Sunny Bruschetta", description: "With Cream Cheese", rating: "4", time: "30min"),

   RecentlyAddedItem(image: "assets/categories_details/breakfast/omelette_cheese.png", title: "Omelette Cheese", description: "Fresh Parsley ", rating: "4", time: "30min"),
   RecentlyAddedItem(image: "assets/categories_details/breakfast/tofu_sandwich.png", title: "Tofu Sandwich", description: "Microgreens", rating: "4", time: "30min"),
 ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1C0F0D),
        appBar: AppbarwidgetDetails(title: "Breakfast"),
        bottomNavigationBar: Bottomnavigationwindow(),
        body: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: Retcepts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 80,
        crossAxisSpacing: 30
        ),
        itemBuilder: (context, index) => Retcepts[index],
        ),
      ),
    );
  }
}


