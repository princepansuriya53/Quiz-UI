import 'package:flutter/material.dart';
import 'package:quzzio/Commnfile/common.dart';

class discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.search, color: Colors.black))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text('Discover', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            discoverd().cards(
                kolor: Colors.blueGrey,
                pic: "assest/calender.json",
                qs: "16 Qs",
                tit: "Get Smart with prod.....",
                month: "2 month ago",
                view: "5.6 K plays",
                name: "Deep Mavani",
                avtar: "assest/1.jpg"),
            discoverd().cards(
                kolor: Colors.yellowAccent,
                pic: "assest/idea.json",
                qs: "16 Qs",
                tit: "Get Smart with prod.....",
                month: "2 month ago",
                view: "5.6 K plays",
                name: "Vraj Mulayte",
                avtar: "assest/2.png"),
            discoverd().cards(
                kolor: const Color.fromARGB(255, 12, 146, 214),
                pic: "assest/fun.json",
                qs: "12 Qs",
                tit: "Having Fun & Always S...",
                month: "2 Year Ago",
                view: "18.5k plays",
                name: "Mohit Pande",
                avtar: "assest/avtar 1.jpg"),
            discoverd().cards(
                kolor: Colors.blueAccent,
                pic: "assest/world.json",
                qs: "20 Qs",
                tit: "Can you imagine world...",
                month: "3 Month",
                view: '4.9 k plays',
                name: "Abhu JAbu Dabu",
                avtar: "assest/4.jpg"),
            discoverd().cards(
                kolor: Colors.orangeAccent,
                pic: "assest/schools.json",
                qs: "10 Qs",
                tit: "Back to Scholl, Get Sm...",
                month: "1 yeat ago",
                view: "15.2 k plays",
                name: "Mr. Kriyansh",
                avtar: "assest/15.jpg"),
            discoverd().cards(
                kolor: Colors.blueGrey,
                pic: "assest/music.json",
                qs: "80 Qs",
                tit: "What Is your Favorite...",
                month: "5 Month Ago",
                view: "6.5 k plays",
                name: "Amit rana",
                avtar: "assest/8.jpg")
          ],
        ),
      ),
    );
  }
}
