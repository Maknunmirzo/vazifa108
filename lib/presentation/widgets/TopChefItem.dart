import 'package:flutter/material.dart';

class TopChefItem extends StatelessWidget {
  final String image,title;
  const TopChefItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return             Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image(image: AssetImage(image,),
            width: 83,
            height: 74,

          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xffFFFDF9),
              decoration: TextDecoration.none,
              fontSize: 12),
        ),
      ],
    );
  }
}