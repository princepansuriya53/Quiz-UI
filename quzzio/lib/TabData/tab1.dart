// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quzzio/Commnfile/common.dart';
import 'new_collection.dart';

class tab1 extends StatefulWidget {
  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 500),
      length: 2,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 20,
            automaticallyImplyLeading: false,
            bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 1.2,
                automaticIndicatorColorAdjustment: true,
                padding: const EdgeInsets.all(5),
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.blueGrey,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurpleAccent),
                tabs: const [
                  Tab(text: 'Quzzio'),
                  Tab(text: 'Collection'),
                ]),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("45 Quizzon",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                        Wrap(
                          children: const [
                            Text("Newest",
                                style: TextStyle(
                                    color: Color(0xff7659ff), fontSize: 18)),
                            SizedBox(width: 10),
                            Icon(Icons.filter_list_alt,
                                color: Color(0xff7659ff)),
                            SizedBox(width: 10)
                          ],
                        )
                      ]),
                  discoverd().cards(
                      kolor: const Color.fromARGB(255, 169, 52, 91),
                      pic: "assest/school.json",
                      qs: "10 QS",
                      tit: "Back to school Quiz........",
                      month: "Tody",
                      view: "20 Plays",
                      name: "public",
                      avtar: "assest/public.png"),
                  discoverd().cards(
                      kolor: const Color.fromARGB(255, 236, 236, 17),
                      pic: "assest/fun.json",
                      qs: "15 QS",
                      tit: "Have fun togther at S....",
                      month: "3 Days Ago",
                      view: "885 Plays",
                      name: "Only Me",
                      avtar: "assest/personal only me.jpg"),
                ],
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("7 Collection",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                        Wrap(children: const [
                          Text("Newest",
                              style: TextStyle(
                                  color: Color(0xff7659ff), fontSize: 18)),
                          SizedBox(width: 10),
                          Icon(Icons.filter_list_alt, color: Color(0xff7659ff)),
                          SizedBox(width: 10)
                        ])
                      ]),
                  //1
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assest/Education.jpg")),
                                  color: Color.fromARGB(255, 72, 154, 175),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Stack(children: const [
                                Padding(
                                    padding: EdgeInsets.only(top: 95, left: 18),
                                    child: Text("Education",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))
                              ]),
                            ),
                            Container(
                                height: 120,
                                width: 150,
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Stack(children: [
                                  Lottie.asset("assest/sports.json",
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover),
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 95, left: 18),
                                      child: Text("Sport",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white))),
                                ])),
                          ])),
                  //2
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 120,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Stack(children: [
                              Lottie.asset('assest/mindsmart.json'),
                              const Padding(
                                  padding: EdgeInsets.only(top: 95, left: 18),
                                  child: Text("Smart Mind",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)))
                            ]),
                          ),
                          Container(
                              height: 120,
                              width: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Stack(children: [
                                Lottie.asset("assest/student.json",
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.cover),
                                const Padding(
                                    padding: EdgeInsets.only(top: 95, left: 18),
                                    child: Text("Student",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                              ])),
                        ]),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 7, 191, 232),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Stack(children: [
                                Lottie.asset('assest/music.json'),
                                const Padding(
                                    padding: EdgeInsets.only(top: 95, left: 18),
                                    child: Text("Music",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))
                              ]),
                            ),
                            Container(
                                height: 120,
                                width: 150,
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Stack(children: [
                                  Lottie.asset("assest/sport.json",
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover),
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 95, left: 18),
                                      child: Text("Education",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white))),
                                ])),
                          ])),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 280),
                    child: FloatingActionButton(
                      onPressed: () => Navigator.push(
                          context, ScaleTransition6(collection_new())),
                      // _showToast(context),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void _showToast(BuildContext context) {
//   final scaffold = ScaffoldMessenger.of(context);
//   scaffold.showSnackBar(
//     const SnackBar(
//       clipBehavior: Clip.hardEdge,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(20))),
//       behavior: SnackBarBehavior.floating,
//       content: Text('Kam Kar na BHai taru'),
//     ),
//   );
// }

class ScaleTransition6 extends PageRouteBuilder {
  final Widget page;
  ScaleTransition6(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 1000),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
                filterQuality: FilterQuality.high,
                alignment: Alignment.centerRight,
                scale: animation,
                child: child);
          },
        );
}
