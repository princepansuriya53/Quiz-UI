// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';

class topcoll extends StatefulWidget {
  @override
  State<topcoll> createState() => topcollState();
}

class topcollState extends State<topcoll> {
  final List<homemodel> data = [
    homemodel(image: "assest/teacher.json", txt: "Education"),
    homemodel(image: 'assest/game.json', txt: "Game"),
    homemodel(image: 'assest/businesssss.json', txt: "Business"),
    homemodel(image: "assest/entertainment.json", txt: "Entertainment"),
    homemodel(image: 'assest/artist.json', txt: "Art"),
    homemodel(image: 'assest/greenify-the-earth.json', txt: "Plants"),
    homemodel(image: "assest/finance.json", txt: "Finance"),
    homemodel(image: "assest/food.json", txt: 'Food & Drinks'),
    homemodel(image: "assest/health.json", txt: "Health"),
    homemodel(image: "assest/kids.json", txt: "Kids"),
    homemodel(image: "assest/sports.json", txt: "Sports"),
    homemodel(image: "assest/lifestyle.json", txt: "LifeStyle"),
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search_rounded)),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text("Top Collection", style: TextStyle(color: Colors.black)),
      ),
      body: AnimationLimiter(
          child: GridView.count(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: EdgeInsets.all(w / 60),
              crossAxisCount: 2,
              children: List.generate(data.length, (int index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  columnCount: 2,
                  child: ScaleAnimation(
                      duration: const Duration(milliseconds: 900),
                      curve: Curves.bounceInOut,
                      scale: 1.5,
                      child: FadeInAnimation(
                        curve: Curves.decelerate,
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: w / 15,
                            left: w / 60,
                            right: w / 60,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 20,
                                    spreadRadius: 8)
                              ]),
                          child: Stack(
                            children: [
                              Lottie.asset(data[index].image, repeat: false),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 129, left: 20),
                                child: Text(
                                  data[index].txt,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                );
              }))),
    );
  }
}

class homemodel {
  String image;
  String txt;
  homemodel({
    required this.image,
    required this.txt,
  });
}
