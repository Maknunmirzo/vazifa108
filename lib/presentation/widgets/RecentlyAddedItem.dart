import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentlyAddedItem extends StatelessWidget {
  final String image,title,description,rating,time;
  RecentlyAddedItem({super.key,required this.image, required this.title, required this.description, required this.rating, required this.time});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: -65,
          left: 5,
          right: 5,
          child: Container(
            width: 159,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff1C0F0D),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w800,
                        fontSize: 12),
                  ),
                  Text(
                    description,
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
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 169,
            height: 153,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(image,fit: BoxFit.cover, ),

            ),
          ),
        ),

        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xffFD5D69),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(child: SvgPicture.asset("assets/svg/heart.svg",)),
          ),
        ),
      ],
    ) ;
  }
}