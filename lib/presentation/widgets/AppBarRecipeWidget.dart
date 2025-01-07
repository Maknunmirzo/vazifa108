import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarRecipeWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarRecipeWidget({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
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
          child: SizedBox(
            width: 14,
            height: 16,
            child: SvgPicture.asset(
              "assets/svg/heart.svg",
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(Color(0xffFD5D69), BlendMode.srcIn),
            ),
          ),
        ),
        SizedBox(width: 4,),
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
          child: SizedBox(
              height: 16,
              width: 14,
              child: SvgPicture.asset(
                "assets/svg/share.svg",
                colorFilter: ColorFilter.mode(Color(0xffFD5D69), BlendMode.srcIn),
                fit: BoxFit.scaleDown,
              )),
        )
      ],
    );
  }
}
