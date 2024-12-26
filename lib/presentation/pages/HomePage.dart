import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thing/presentation/widgets/RecentlyAddedItem.dart';
import 'package:thing/presentation/widgets/TopChefItem.dart';
import 'package:thing/presentation/widgets/TrendingRecipe.dart';
import 'package:thing/presentation/widgets/YourRecipesItem.dart';
import 'package:thing/presentation/widgets/bottomnavigationwindow.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1C0F0D),
        extendBody: true,
        appBar: AppBarWindow(),
        body:MainWindow() ,
        bottomNavigationBar: Bottomnavigationwindow()
    );
  }
}

class AppBarWindow extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,

      backgroundColor: Color(0xFF1C0F0D),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "HI! Dianne",
            style: TextStyle(
                color: Color(0xffFD5D69),
                decoration: TextDecoration.none,
                fontSize: 26),
          ),
          Text(
            "What are you cooking today",
            style: TextStyle(
                color: Color(0xffFFFDF9),
                decoration: TextDecoration.none,
                fontSize: 14),
          )
        ],
      ),
      actions: [
        Container(
          width: 28,
          height: 28,
          child: SvgPicture.asset("assets/svg/notification.svg"),
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        Container(
          width: 28,
          height: 28,
          child: SvgPicture.asset("assets/svg/search.svg"),
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
        )
      ],
    ) ;
  }
  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TrendingRecipe(),
          SizedBox(height: 50,),
          YourRecipes(),
          SizedBox(height: 10,),
          TopChef(),
          RecentyAdded(),
        ] );
  }

}



class TopChef extends StatelessWidget {
  const TopChef({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Top chef",
              style: TextStyle(
                  color: Color(0xffFD5D69),
                  decoration: TextDecoration.none,
                  fontSize: 15),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopChefItem(image: "assets/home_page/chef1.png", title: "Joseph"),
              TopChefItem(image: "assets/home_page/chef2.png", title: "Andrew"),
              TopChefItem(image: "assets/home_page/chef3.png", title: "Emily"),
              TopChefItem(image: "assets/home_page/chef4.png", title: "Jessica"),
            ],
          )

        ],
      ),
    );
  }
}

class YourRecipes extends StatelessWidget {
  const YourRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 255,
      decoration: BoxDecoration(
          color: Color(0xffFD5D69),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your recipes",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                YourRecipesItem(image: "assets/home_page/hamb.png", title: "Chicken Burger", rating: "5", time: "15min"),
                YourRecipesItem(image: "assets/home_page/dessert.png", title: "Tiramisu", rating: "5", time: "15min"),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecentyAdded extends StatelessWidget {
  const RecentyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recently Added",
            style: TextStyle(
                color: Color(0xffFD5D69),
                decoration: TextDecoration.none,
                fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RecentlyAddedItem(image: "assets/home_page/picrecent1.png", title: "Lemonade", description: "acidic and refreshing", rating: "4", time: "30min"),
              RecentlyAddedItem(image: "assets/home_page/picrecent2.png", title: "Lemonade", description: "acidic and refreshing", rating: "4", time: "30min"),
            ],
          )
        ],
      ),
    );
  }
}