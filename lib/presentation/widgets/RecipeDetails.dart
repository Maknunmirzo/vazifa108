import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.text_details, required this.time_details});
final String text_details,time_details;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            children: [
              Text("Details",
              style: TextStyle(
                color: Color(0xffFD5D69),
                fontSize: 20,
                decoration: TextDecoration.none,
              ),),
              SizedBox(width: 16,),
              SvgPicture.asset(
                "assets/svg/clock.svg",
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(Color(0xffFFFDF9), BlendMode.srcIn),
              ),
              SizedBox(width: 4,),
              Text(time_details,
                style: TextStyle(
                  color: Color(0xffFFFDF9),
                  fontSize: 12,
                  decoration: TextDecoration.none,
                ),),
              SizedBox(width: 4,),
              Text("min",
                style: TextStyle(
                  color: Color(0xffFFFDF9),
                  fontSize: 12,
                  decoration: TextDecoration.none,
                ),),

            ],
            ),
            Text(text_details,
            style: TextStyle(
              color: Color(0xffFFFDF9),
              fontSize: 12,
              decoration: TextDecoration.none,
            ),),
          ],
        ),
      ),
    );
  }
}
