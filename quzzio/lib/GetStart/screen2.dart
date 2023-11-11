import 'package:flutter/material.dart';
import '/Commnfile/common.dart';

class screen2 extends StatefulWidget {
  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(right: 12, top: 2, left: 1, bottom: 2),
                  child: Text('''Describe a Work place 
that suit you 👜''',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                      textAlign: TextAlign.justify,
                      textScaleFactor: 2),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    "You can Skip it if you're not sure",
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "School",
                  img: "assest/higher education.json",
                ),
                const SizedBox(height: 20),
                cardpage1(
                    context: context,
                    txt1: "higher Education",
                    img: "assest/school.json",
                    ckolor: const Color.fromARGB(255, 194, 181, 59),
                    color: Colors.yellow),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "Teams",
                  img: "assest/teamwork.json",
                  ckolor: Colors.greenAccent,
                  color: const Color.fromARGB(255, 57, 167, 61),
                ),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "Business",
                  img: "assest/business.json",
                  ckolor: const Color.fromARGB(255, 140, 82, 82),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
