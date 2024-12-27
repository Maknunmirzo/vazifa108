import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrendingRecipe extends StatelessWidget {
  const TrendingRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              bottom: -40,
              left: 10,
              right: 10,
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14), // Pastki chap radius
                      bottomRight: Radius.circular(14),
                    ),
                    color: Color(0xff1C0F0D),
                    border: Border.all(color: Color(0xffFD5D69), width: 1)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 12),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Salami and cheese pizza",
                                style: TextStyle(
                                    color: Color(0xffFFfDF9),
                                    decoration: TextDecoration.none,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "30min",
                                  style: TextStyle(
                                      color: Color(0xffEC888D),
                                      decoration: TextDecoration.none,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Salty and smoky flavors in every bite ",
                                  style: TextStyle(
                                      color: Color(0xffFFfDF9),
                                      decoration: TextDecoration.none,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Row(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Color(0xffEC888D),
                                        decoration: TextDecoration.none,
                                        fontSize: 13),
                                  ),
                                  SvgPicture.asset("assets/svg/star.svg"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
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
                child: Center(
                    child: SvgPicture.asset("assets/svg/heart.svg",
                        color: Color(0xffFD5D69))),
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
