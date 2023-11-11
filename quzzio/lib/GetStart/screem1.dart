import 'package:flutter/material.dart';
import '/Commnfile/common.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('''What type of account do     
 you like to create? 👱🏻‍♂️''',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                      textAlign: TextAlign.justify,
                      textScaleFactor: 2),
                  const Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Text('''You can Skip it if you're not sure.''',
                        style: TextStyle(
                            fontSize: 16,
                            height: 2,
                            fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: "Personal",
                    img: "assest/prsonal.json",
                    ckolor: const Color.fromARGB(255, 61, 82, 119),
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: "Teacher",
                    img: "assest/teacher.json",
                    ckolor: const Color.fromARGB(255, 135, 112, 41),
                    color: Colors.yellow,
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: 'Student',
                    img: "assest/student.json",
                    ckolor: Colors.greenAccent,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: "Professional",
                    img: "assest/profe.json",
                    color: Colors.red,
                    ckolor: Color.fromARGB(255, 182, 107, 107),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
