import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';





class TrendingRecipe extends StatelessWidget {
  const TrendingRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trending Recipe",
          style: TextStyle(
              color: Color(0xffFD5D69),
              decoration: TextDecoration.none,
              fontSize: 26),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -53,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: Color(0xff1C0F0D),border: Border.all(color: Color(0xffFD5D69),width: 1) ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Salami and cheese pizza",
                            style: TextStyle(
                                color: Color(0xffFFfDF9),
                                decoration: TextDecoration.none,
                                fontSize: 13),
                          ),

                          Row(
                            children: [
                              SvgPicture.asset("assets/clock.svg"),
                              SizedBox(width: 3,),
                              Text(
                                "30min",
                                style: TextStyle(
                                    color: Color(0xffEC888D),
                                    decoration: TextDecoration.none,
                                    fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Salty and smoky flavors in every bite",
                            style: TextStyle(
                                color: Color(0xffFFfDF9),
                                decoration: TextDecoration.none,
                                fontSize: 13),
                          ),

                          Row(
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                    color: Color(0xffEC888D),
                                    decoration: TextDecoration.none,
                                    fontSize: 13),
                              ),
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(width: 3,),

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 358,
              height: 143,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image(
                  image: AssetImage("assets/home_page/salami_pizza.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 28,
                height: 28,
                child: Center(child: SvgPicture.asset("assets/heart.svg",color:Color(0xffFD5D69))),
                decoration: BoxDecoration(
                  color: Color(0xffFFC6C9),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}