// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'getstarted.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Palette.Color_correction,
        appBarTheme: const AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() => _textOpacity = 1.0);
      });

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() => _fontSize = 1.06);
    });

    Timer(
      const Duration(seconds: 2),
      () => setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      }),
    );
    Timer(const Duration(seconds: 4), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition(singup()));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: height / _fontSize),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _textOpacity,
                child: Text('Quizzo',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: animation1.value),
                    textScaleFactor: 1.5),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: width / _containerSize,
                  width: width / _containerSize,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset('assest/Logo.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTransition extends PageRouteBuilder {
  final Widget page;
  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn, parent: animation);
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                  sizeFactor: animation, axisAlignment: 0, child: page),
            );
          },
        );
}

class Palette {
  static const MaterialColor Color_correction = MaterialColor(
    0xff7659ff,
    <int, Color>{
      50: Color(0xff7659ff), //10%
      100: Color(0xff6a4dff), //20%
      200: Color(0xff5533ff), //30%
      300: Color(0xff5533ff), //40%
      400: Color(0xff5533ff), //50%
      500: Color(0xff5533ff), //60%
      600: Color(0xff5533ff), //70%
      700: Color(0xff8066ff), //80%
      800: Color(0xff401aff), //90%
      900: Color(0xff6849ff), //100%
    },
  );
}
