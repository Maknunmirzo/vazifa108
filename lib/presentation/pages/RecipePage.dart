import 'package:flutter/material.dart';
import 'package:thing/presentation/widgets/RecipeDetails.dart';
import 'package:thing/presentation/widgets/RecipeIngredients.dart';
import 'package:thing/presentation/widgets/RecipeSteps.dart';

import '../widgets/AppBarRecipeWidget.dart';
import '../widgets/RecipeMainItem.dart';
import '../widgets/bottomnavigationwindow.dart';




class RecipePage extends StatelessWidget {
   RecipePage({super.key});
  final List<String> steps=[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque aliquet augue.",
    "Phasellus faucibus aliquam tincidunt. Ut et elementum quam. Proin mi felis, dignissim at elit id, ullamcorper mattis est.",
    "Nunc molestie orci in mauris pretium ullamcorper. Vivamus et gravida felis. Nam bibendum libero turpis, ut facilisis justo hendrerit in. ",
    "Morbi non commodo erat. Aliquam id massa aliquet, porttitor dui at, commodo mi. Aliquam et semper nisl. Morbi sit amet aliquet tellus.",
    "Donec euismod magna est, quis blandit leo eleifend vitae. Maecenas ac luctus tortor, vel condimentum enim.",
    "Nam varius, diam in finibus congue, turpis eros lacinia nulla, vitae rutrum dolor dui at elit. Vestibulum id viverra felis, non gravida odio.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque aliquet augue.",
    "Phasellus faucibus aliquam tincidunt. Ut et elementum quam. Proin mi felis, dignissim at elit id, ullamcorper mattis est.",
  ];
  final List<List> ings=[
    ["text1","text2"],
    ["1","cup all-purpose flour"],
    ["2","tablespoons granulated sugar"],
    ["1","teaspoon baking powder"],
    ["1/2","teaspoon baking soda"],
    ["1/4","teaspoon salt"],
    ["1","cup buttermilk (or regular milk)"],
    ["1","large egg"],
    ["2","tablespoons unsalted butter, melted"],
    ["","Additional butter or oil for cooking"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1C0F0D),
        appBar: AppBarRecipeWidget(
          title: "Breakfast",
        ),
        bottomNavigationBar: Bottomnavigationwindow(),
        body: ListView(
          // physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            RecipeMainItem(
              title: "Pancake & Cream",
              rating: '4',
              image: "assets/recipes/pancake.png",
              reviews: "2.273",
            ),
            SizedBox(height:60 ,),
            RecipeDetails(
              text_details: "Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.",
              time_details: "45",
            ),
            SizedBox(height: 10,),
            RecipeIngredients(ings: ings),
            SizedBox(height: 10,),
            RecipeSteps(steps: steps),

            // Text("makndfdfdffdfdfdfdun",style: TextStyle(color: Colors.white),)

          ],
        ));
  }
}
