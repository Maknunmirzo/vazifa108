import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({super.key, required this.ings});

  final List<List> ings;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Ingredients",
            style: TextStyle(
              color: Color(0xffFD5D69),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 358,
            height: (ings.length+0)*22,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return IngsItem(
                  ings_text1: ings[index][0],
                  ings_text2: ings[index][1],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
              itemCount: ings.length,
            ),
          )
        ],
      ),
    );
  }
}

class IngsItem extends StatelessWidget {
  const IngsItem({super.key, required this.ings_text1, required this.ings_text2});

  final String ings_text1, ings_text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              "assets/svg/dot.svg",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            ings_text1,
            style: TextStyle(
              color: Color(0xffFD5D69),
              fontSize: 12,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            ings_text2,
            style: TextStyle(
              color: Color(0xffFFFDF9),
              fontSize: 12,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
