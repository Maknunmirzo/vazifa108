import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YourRecipesItem extends StatelessWidget {
  final String image,title,rating,time;
  const YourRecipesItem({super.key, required this.image, required this.title, required this.rating, required this.time});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: 169,
            height: 162,
            child: Image.asset(image,fit:BoxFit.cover,),),
        ),
        Positioned(

          bottom: -30,
          child: Container(
            width: 169,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff1C0F0D),
                        decoration: TextDecoration.none,
                        fontSize: 12),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 6,),
                          Text(
                            rating,
                            style: TextStyle(
                                color: Color(0xffEC888D),
                                decoration: TextDecoration.none,
                                fontSize: 13),
                          ),
                          SvgPicture.asset("assets/svg/star.svg"),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/clock.svg"),
                          SizedBox(width: 3,),
                          Text(
                            time,
                            style: TextStyle(
                                color: Color(0xffEC888D),
                                decoration: TextDecoration.none,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 28,
            height: 28,
            child: Center(child: SvgPicture.asset("assets/svg/heart.svg",)),
            decoration: BoxDecoration(
              color: Color(0xffFD5D69),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ],
    ) ;
  }
}