import 'package:flutter/material.dart';
import 'package:thing/presentation/widgets/AppbarWidgetDetails.dart';
import 'package:thing/presentation/widgets/CategoriesdetailsItem.dart';
import '../../widgets/RecentlyAddedItem.dart';
import '../../widgets/bottomnavigationwindow.dart';
class LunchPage extends StatelessWidget {
  const LunchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1C0F0D),
        appBar: AppbarwidgetDetails(title: "Lunch"),
        bottomNavigationBar: Bottomnavigationwindow(),
        body: SizedBox(
          width: double.infinity,
          child: ListView(children: [
            Categoriesdetailsitem(
              item1: RecentlyAddedItem(image: "assets/categories_details/lunch/Baked_Chicken.png", title: "Baked Chicken", description: "Delicious and juicy wings", rating: "5", time: "30min"),
              item2: RecentlyAddedItem(image: "assets/categories_details/lunch/BBQ_Tacos.png", title: "BBQ Tacos", description: "Mixed vegetables and meat", rating: "3", time: "30min"),
            ),
            Categoriesdetailsitem(
              item1: RecentlyAddedItem(image: "assets/categories_details/lunch/Chicken_Burger.png", title: "Chicken Burger", description: "Crunchy bread", rating: "4", time: "30min"),
              item2: RecentlyAddedItem(image: "assets/categories_details/lunch/Chicken_Curry.png", title: "Chicken Curry", description: "Rice bowl", rating: "4", time: "30min"),
            ),
            Categoriesdetailsitem(
              item1: RecentlyAddedItem(image: "assets/categories_details/lunch/Grilled_Skewer.png", title: "Grilled Skewer", description: "Roast", rating: "4", time: "30min"),
              item2: RecentlyAddedItem(image: "assets/categories_details/lunch/Pad_Thai_Chicken.png", title: "Pad Thai Chicken", description: "With fresh vegetables", rating: "4", time: "15min"),
            ),
          ]),
        ),
      ),
    );
  }
}
