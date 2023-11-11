import 'package:flutter/material.dart';

import '../Commnfile/common.dart';

class tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
              title: const Text('28 Favortie'),
              trailing: Wrap(
                children: const [
                  Text('Default',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(Icons.mobiledata_off_sharp, color: Colors.purple)
                ],
              )),
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
            name: "Dhiru bhaipote",
            avtar: "assest/15.jpg",
            kolor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
