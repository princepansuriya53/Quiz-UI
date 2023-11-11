// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';
import 'page_slider.dart';
import 'login.dart';

class singup extends StatefulWidget {
  @override
  _singupState createState() => _singupState();
}

class _singupState extends State<singup> {
  final List<String> imagesurl = [
    'assest/132652-quiz-animation.json',
    'assest/112900-checklist.json',
    'assest/91199-quiz.json',
  ];
  final List<String> txt = [
    """Create, Share and play quizzes Swherve and wher you want""",
    """Find fun and intersting quizes to boost up your kowledge""",
    """Play and take quize challanges togther with your friends""",
  ];
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: imagesurl.length,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 15 / 2,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() => currentPos = index);
                  },
                  enlargeFactor: 0.6,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                ),
                itemBuilder: (context, index, realIdx) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Lottie.asset(imagesurl[index],
                            filterQuality: FilterQuality.high,
                            height: 300,
                            width: 540),
                        const SizedBox(height: 40),
                        Text(
                            textWidthBasis: TextWidthBasis.parent,
                            textAlign: TextAlign.justify,
                            txt[index].toString(),
                            textScaleFactor: 2,
                            style:
                                const TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesurl.map((url) {
                  int index = imagesurl.indexOf(url);
                  return Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPos == index
                          ? const Color.fromRGBO(0, 0, 0, 0.894)
                          : const Color.fromRGBO(192, 183, 183, 1),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 280,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page_slider())),
                  child: const Text('GET Started'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 280,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: const Color.fromARGB(255, 238, 237, 242),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  ),
                  child: const Text('I ALREADY HAVE AN ACCOUNT',
                      style:
                          TextStyle(color: Color.fromARGB(255, 58, 16, 185))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
