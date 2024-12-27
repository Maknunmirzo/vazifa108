import 'package:flutter/material.dart';

class CategoriesItem  extends StatelessWidget {
  const CategoriesItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 158,
            height: 144,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white,
              fontSize: 15,
              decoration: TextDecoration.none),
        )
      ],
    );
  }
}