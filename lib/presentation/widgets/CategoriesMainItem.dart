import 'package:flutter/material.dart';

class Categoriesmainitem extends StatelessWidget {
  const Categoriesmainitem({super.key, required this.image, required this.title});
  final String image,title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         title,
          style: TextStyle(color: Colors.white,
              fontSize: 15,
              decoration: TextDecoration.none),
        ),
        SizedBox(height: 10,),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),

      ],
    );
  }
}
