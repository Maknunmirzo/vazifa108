import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bottomnavigationwindow extends StatelessWidget {
  const Bottomnavigationwindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Color(0xffFD5D69)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/svg/bottom/home.svg",
                ),
                SvgPicture.asset("assets/svg/bottom/community.svg"),
                SvgPicture.asset("assets/svg/bottom/categories.svg"),
                SvgPicture.asset("assets/svg/bottom/profile.svg"),
              ],
            ),
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}
