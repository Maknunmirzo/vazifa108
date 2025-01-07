import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeMainItem extends StatelessWidget {
  const RecipeMainItem({super.key, required this.title, required this.rating, required this.image, required this.reviews});

  final String title, rating, image, reviews;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Stack(
            clipBehavior: Clip.none,
            // alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: -40,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffFD5D69),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xffFFFDF9),
                            fontSize: 19,
                            decoration: TextDecoration.none
                          ),
                        ),

                        Row(
                          children: [
                                SvgPicture.asset("assets/svg/star.svg",
                                  colorFilter: ColorFilter.mode(Color(0xffFFFDF9), BlendMode.srcIn),
                                  fit: BoxFit.scaleDown,),
                                SizedBox(width: 4,),
                                Text(
                                  rating,
                                  style: TextStyle(
                                      color: Color(0xffFFFDF9),
                                      fontSize: 12,
                                      decoration: TextDecoration.none
                                  ),
                                ),

                            SizedBox(width: 10,),
                            SvgPicture.asset("assets/svg/reviews.svg",),
                            SizedBox(width: 4,),
                            Text(
                              reviews,
                              style: TextStyle(
                                  color: Color(0xffFFFDF9),
                                  fontSize: 12,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                        width: 357,
                        height: 281,
                        child: Image.asset(image,fit: BoxFit.cover,)),
                  ),
                  Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      color: Color(0xffFD5D69),
                      borderRadius: BorderRadius.circular(35),

                    ),
                    child: SvgPicture.asset("assets/svg/play.svg",fit: BoxFit.scaleDown,) ,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}
