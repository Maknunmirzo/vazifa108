import 'package:flutter/material.dart';
import 'package:thing/presentation/pages/CategoriesPage.dart';
import 'package:thing/presentation/pages/HomePage.dart';
import 'package:thing/presentation/pages/RecipePage.dart';
import 'package:thing/presentation/pages/categories_details/BreakfastPage.dart';
import 'package:thing/presentation/pages/categories_details/LunchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipePage()
    );
  }
}















