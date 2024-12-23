import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Window(),
    );
  }
}

class Window extends StatelessWidget {
  const Window({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBarWindow(),
      body:MainWindow() ,
      bottomNavigationBar: BottomWindow()
    );
  }
}

class BottomWindow extends StatelessWidget {
  const BottomWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Color(0xffFD5D69)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/svg/home.svg",

                ),
                SvgPicture.asset("assets/svg/community.svg"),
                SvgPicture.asset("assets/svg/categories.svg"),
                SvgPicture.asset("assets/svg/profile.svg"),
              ],
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}

class AppBarWindow extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      leadingWidth: double.infinity,
      backgroundColor: Color(0xFF1C0F0D),
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "HI! Dianne",
            style: TextStyle(
                color: Color(0xffFD5D69),
                decoration: TextDecoration.none,
                fontSize: 26),
          ),
          Text(
            "What are you cooking today",
            style: TextStyle(
                color: Color(0xffFFFDF9),
                decoration: TextDecoration.none,
                fontSize: 14),
          )
        ],
      ),
      actions: [
        Container(
          width: 28,
          height: 28,
          child: SvgPicture.asset("assets/noti.svg"),
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        Container(
          width: 28,
          height: 28,
          child: SvgPicture.asset("assets/search.svg"),
          decoration: BoxDecoration(
            color: Color(0xffFFC6C9),
            borderRadius: BorderRadius.circular(14),
          ),
        )
      ],
    ) ;
  }
  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                        image: AssetImage("assets/salami_pizza.png"),
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
          ),
          SizedBox(height: 50,),
          BodyWindow(),
          SizedBox(height: 10,),
          BodyWindow2(),
          BodyWindow3(),

        ],
      ),
    );
  }

}

class BodyWindow1 extends StatelessWidget {
  const BodyWindow1({super.key});

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
                  image: AssetImage("assets/salami_pizza.png"),
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


class BodyWindow extends StatelessWidget {
  const BodyWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 255,
      decoration: BoxDecoration(
          color: Color(0xffFD5D69),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your recipes",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                          width: 169,
                          height: 162,
                          child: Image.asset("assets/hamb.png"),),
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
                                "Chicken Burger",
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
                                        "5",
                                        style: TextStyle(
                                            color: Color(0xffEC888D),
                                            decoration: TextDecoration.none,
                                            fontSize: 13),
                                      ),
                                      SvgPicture.asset("assets/star.svg"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/clock.svg"),
                                      SizedBox(width: 3,),
                                      Text(
                                        "15min",
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
                        child: Center(child: SvgPicture.asset("assets/heart.svg",)),
                        decoration: BoxDecoration(
                          color: Color(0xffFD5D69),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 169,
                        height: 162,
                        child: Image.asset("assets/dessert.png"),),
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
                                "Tiramisu",
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
                                        "5",
                                        style: TextStyle(
                                            color: Color(0xffEC888D),
                                            decoration: TextDecoration.none,
                                            fontSize: 13),
                                      ),
                                      SvgPicture.asset("assets/star.svg"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/clock.svg"),
                                      SizedBox(width: 3,),
                                      Text(
                                        "15min",
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
                        child: Center(child: SvgPicture.asset("assets/heart.svg",)),
                        decoration: BoxDecoration(
                          color: Color(0xffFD5D69),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BodyWindow3 extends StatelessWidget {
  const BodyWindow3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recently Added",
            style: TextStyle(
                color: Color(0xffFD5D69),
                decoration: TextDecoration.none,
                fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -55,
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
                              "Lemonade",
                              style: TextStyle(
                                  color: Color(0xff1C0F0D),
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12),
                            ),
                            Text(
                              "Acidic and refreshing",
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
                                      "4",
                                      style: TextStyle(
                                          color: Color(0xffEC888D),
                                          decoration: TextDecoration.none,
                                          fontSize: 13),
                                    ),
                                    SvgPicture.asset("assets/star.svg"),
                                  ],
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
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: SizedBox(
                      width: 169,
                      height: 153,
                      child: Image.asset("assets/pic1.png"),),
                  ),

                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 28,
                      height: 28,
                      child: Center(child: SvgPicture.asset("assets/heart.svg",)),
                      decoration: BoxDecoration(
                        color: Color(0xffFD5D69),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -55,
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
                              "Lemonade",
                              style: TextStyle(
                                  color: Color(0xff1C0F0D),
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12),
                            ),
                            Text(
                              "Acidic and refreshing",
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
                                      "4",
                                      style: TextStyle(
                                          color: Color(0xffEC888D),
                                          decoration: TextDecoration.none,
                                          fontSize: 13),
                                    ),
                                    SvgPicture.asset("assets/star.svg"),
                                  ],
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
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: SizedBox(
                      width: 169,
                      height: 153,
                      child: Image.asset("assets/drink.png"),),
                  ),

                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 28,
                      height: 28,
                      child: Center(child: SvgPicture.asset("assets/heart.svg",)),
                      decoration: BoxDecoration(
                        color: Color(0xffFD5D69),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}

class BodyWindow2 extends StatelessWidget {
  const BodyWindow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Top chef",
              style: TextStyle(
                  color: Color(0xffFD5D69),
                  decoration: TextDecoration.none,
                  fontSize: 15),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image(image: AssetImage("assets/chefnone.png",),
                      width: 83,
                      height: 74,

                    ),
                  ),
                  Text(
                    "Joseph",
                    style: TextStyle(
                        color: Color(0xffFFFDF9),
                        decoration: TextDecoration.none,
                        fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image(image: AssetImage("assets/chef2.png",),
                      width: 83,
                      height: 74,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Andrew",
                    style: TextStyle(
                        color: Color(0xffFFFDF9),
                        decoration: TextDecoration.none,
                        fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image(image: AssetImage("assets/chef3.png",),
                      width: 83,
                      height: 74,
                    ),
                  ),
                  Text(
                    "Emily",
                    style: TextStyle(
                        color: Color(0xffFFFDF9),
                        decoration: TextDecoration.none,
                        fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image(image: AssetImage("assets/chef4.png",),
                      width: 83,
                      height: 74,
                    ),
                  ),
                  Text(
                    "Jessica",
                    style: TextStyle(
                        color: Color(0xffFFFDF9),
                        decoration: TextDecoration.none,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}


