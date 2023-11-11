import 'package:flutter/material.dart';
import '/Commnfile/common.dart';

class education extends StatefulWidget {
  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search_rounded)),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Education", style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assest/Education.jpg')),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('245 Quizzo',
                  textScaleFactor: 1.3,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Wrap(children: const [
                Text('Default',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.w400)),
                Icon(Icons.arrow_upward_rounded,
                    color: Colors.deepPurple, size: 18),
                Icon(Icons.arrow_downward_rounded,
                    color: Colors.deepPurple, size: 18)
              ]),
            ),
            discoverd().cards(
              kolor: const Color.fromARGB(255, 175, 178, 194),
              pic: "assest/brain.json",
              qs: "10 Qs",
              tit: "Re-Train your Brain wi..",
              month: "2 Week Ago",
              view: "2.6k Plays",
              name: "Darshna dell",
              avtar: "assest/avtar 1.jpg",
            ),
            discoverd().cards(
              kolor: Colors.lightBlue,
              pic: "assest/girl-books.json",
              qs: "12 Qs",
              tit: "Book is a Window to t..",
              month: "2 month Ago",
              view: "5.6k Plays",
              name: "Mohit Mangu",
              avtar: "assest/avtar 2.jpg",
            ),
            discoverd().cards(
              tit: "Back to schools Quizz t..",
              pic: "assest/schools.json",
              qs: "18 Qs",
              month: "2 Year Ago",
              view: "16k Plays",
              name: "Abhu Sambhu",
              avtar: "assest/4.jpg",
              kolor: const Color.fromARGB(255, 3, 21, 30),
            ),
            discoverd().cards(
              tit: "Behind the Smart brain..",
              pic: "assest/back-school.json",
              qs: "18 Qs",
              month: "2 Year Ago",
              view: "16k Plays",
              name: "Abhu Sambhu",
              avtar: "assest/4.jpg",
              kolor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
