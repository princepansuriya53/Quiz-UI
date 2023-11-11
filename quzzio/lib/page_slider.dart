import 'package:flutter/material.dart';
import 'GetStart/screem1.dart';
import 'GetStart/screen2.dart';
import 'GetStart/screen3.dart';
import 'GetStart/screen4.dart';

class page_slider extends StatefulWidget {
  @override
  State<page_slider> createState() => _page_sliderState();
}

class _page_sliderState extends State<page_slider> {
  final PageController _pageController = PageController(initialPage: 0);
  double _progressValue = 0.0;
  final List pages = [
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_scrollListener);
    _pageController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _progressValue =
          (_pageController.offset / _pageController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              width: 300,
              height: 15,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                      value: _progressValue,
                      backgroundColor: Colors.grey,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.deepPurpleAccent))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: PageView.builder(
                allowImplicitScrolling: true,
                controller: _pageController,
                itemCount: pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return pages[index % pages.length];
                },
              ),
            )
          ],
        ));
  }
}
