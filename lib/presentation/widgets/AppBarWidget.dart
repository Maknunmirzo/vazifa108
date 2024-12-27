import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarwidgetCategories extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const AppbarwidgetCategories({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(65);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff1C0F0D),
      leadingWidth: 30,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SvgPicture.asset(
          "assets/svg/back.svg",
        ),
      ),
      title: Center(
        child: Text(
          "Categories",
          style: TextStyle(color: Color(0xffFD5D69), fontSize: 20),
        ),
      ),
      actions: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
          child: SvgPicture.asset(
            "assets/svg/notification.svg",
          ),
        ),
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
          child: SvgPicture.asset("assets/svg/search.svg"),
        )
      ],
    );
  }
}



