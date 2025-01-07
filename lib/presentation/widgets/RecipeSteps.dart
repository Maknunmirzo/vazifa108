import 'package:flutter/material.dart';

class RecipeSteps extends StatelessWidget {
  RecipeSteps({super.key, required this.steps});

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${steps.length} Easy Steps ",
            style: TextStyle(
              color: Color(0xffFD5D69),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 356,
            height: (steps.length+0)*91,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, int index) {
                if (index % 2 == 0) {
                  return StepsItem(
                    item_text: steps[index],
                    item_index: index + 1,
                    item_color: Color(0xffEC888D),
                  );
                }
                return StepsItem(
                  item_text: steps[index],
                  item_index: index + 1,
                  item_color: Color(0xffFFC6C9),
                );
              },
              separatorBuilder: (context, int index) => SizedBox(
                height: 10,
              ),
              itemCount: steps.length,
            ),
          ),
        ],
      ),
    );
  }
}

class StepsItem extends StatelessWidget {
  const StepsItem({super.key, required this.item_text, required this.item_index, required this.item_color});

  final String item_text;
  final int item_index;
  final Color item_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:,
      padding: EdgeInsets.all(8),
      width: 356,
      height: 81,
      decoration: BoxDecoration(
        color: item_color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$item_index.",
              style: TextStyle(
                color: Color(0xff1C0F0D),
                fontSize: 11,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              width: 3.5,
            ),
            Expanded(
              child: Text(
                item_text,
                // softWrap: true,
                style: TextStyle(
                  color: Color(0xff1C0F0D),
                  fontSize: 11,
                  decoration: TextDecoration.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
