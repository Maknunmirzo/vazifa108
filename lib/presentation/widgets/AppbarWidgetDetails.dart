import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarwidgetDetails extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const AppbarwidgetDetails({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Color(0xff1C0F0D),
      leadingWidth: 37,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SvgPicture.asset(
          "assets/svg/back.svg",
        ),
      ),
      title: Center(
        child: Text(
          title,
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
      bottom: AppbarwidgetDetailsItem(),
    );
  }
}

class AppbarwidgetDetailsItem extends StatelessWidget implements PreferredSizeWidget {
  AppbarwidgetDetailsItem({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(30);
  final List <Widget> items =[
    TextItemAppBar(text: "Breakfast"),
    TextItemAppBar(text: "Lunch"),
    TextItemAppBar(text: "Dinner"),
    TextItemAppBar(text: "Vegan"),
    TextItemAppBar(text: "Dessert"),
    TextItemAppBar(text: "Drinks"),
    TextItemAppBar(text: "Sea food")];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 10),
          itemCount:items.length+1,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) =>items[index],
          itemBuilder: (BuildContext context, int index) =>SizedBox(width: 20,)


      ),
    );
  }
}

class TextItemAppBar extends StatelessWidget implements PreferredSizeWidget  {
  final String text;
  const TextItemAppBar({super.key, required this.text});

  @override
  Size get preferredSize => const Size.fromHeight(16);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Color(0xffFD5D69), fontSize: 16),
    );
  }
}