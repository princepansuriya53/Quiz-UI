import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quzzio/Commnfile/common.dart';
import 'package:quzzio/homepagedata/findfriend.dart';
import 'package:quzzio/homepagedata/topcollection.dart';
import 'homepagedata/author.dart';
import 'homepagedata/discover.dart';
import 'homepagedata/edu.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<homemodel> data = [
    homemodel(image: "assest/1.jpg", title: 'Darshan'),
    homemodel(image: "assest/2.png", title: 'Vraj'),
    homemodel(image: "assest/3.jpg", title: 'Mohit'),
    homemodel(image: "assest/4.jpg", title: 'Abhu Sambhu'),
    homemodel(image: "assest/6.jpg", title: 'Sagr Bhai'),
    homemodel(image: "assest/15.jpg", title: 'Amit'),
    homemodel(image: "assest/7.jpg", title: 'DhiruBhai'),
    homemodel(image: "assest/9.jpg", title: 'Kriyan'),
    homemodel(image: "assest/10.jpg", title: 'Deep'),
    homemodel(image: "assest/11.png", title: 'Janil'),
    homemodel(image: "assest/12.jpg", title: 'Meet'),
    homemodel(image: "assest/13.png", title: 'Parth'),
    homemodel(image: "assest/14.jpg", title: 'Hanil'),
    homemodel(image: "assest/8.jpg", title: 'Krutin'),
    homemodel(image: "assest/15.jpg", title: 'Raj'),
    homemodel(image: "assest/16.jpg", title: 'Gor(ruto)'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 13),
                child: SizedBox(
                  height: 190,
                  width: 370,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: const Color(0xFF7859ff),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20, left: 30),
                              child: Text('''Play quiz together with 
your friend now!''',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 30),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Findfriend()),
                                      ),
                                  child: const Text(
                                    'Find Friends',
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent),
                                  )),
                            )
                          ])),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 150, top: 60),
                child: Lottie.asset("assest/find friend.json",
                    height: 150, width: 250))
          ],
        ),
        ListTile(
          title: const Text('Descover',
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: Wrap(children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => discover()),
              ),
              child: const Text('View all',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.w400)),
            ),
            const Icon(Icons.arrow_forward, color: Colors.deepPurple),
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              desingcard().advancedcard(
                  img: "assest/calender.json",
                  title: '''Get Smart with Productivity Quizz..''',
                  name: "Mohit Mangluyu",
                  avtar: "assest/avtar 1.jpg",
                  kolr: Colors.blueAccent),
              desingcard().advancedcard(
                  img: "assest/idea.json",
                  title: "Great ideas come from Brilliant mind",
                  name: "Ms Defhu",
                  avtar: "assest/avtar 2.jpg",
                  kolr: Colors.amberAccent),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Top Author',
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Topauthor(),
                  ));
            },
            child: Wrap(children: const [
              Text('View all',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.w400)),
              Icon(Icons.arrow_forward, color: Colors.deepPurple),
            ]),
          ),
        ),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) =>
                  Column(children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage(data[index].image),
                    ),
                    const SizedBox(height: 10),
                    Text(data[index].title,
                        style: const TextStyle(fontWeight: FontWeight.bold))
                  ])),
        ),
        ListTile(
          title: const Text('Top Collection',
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => topcoll()),
            ),
            child: Wrap(children: const [
              Text(
                'View all',
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.w400),
              ),
              Icon(Icons.arrow_forward, color: Colors.deepPurple)
            ]),
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => education())),
                child: desingcard().carde(
                    kolor: Colors.black,
                    title: "Education",
                    lotti: "assest/education.json"),
              ),
              desingcard().carde(
                  kolor: Colors.amber,
                  title: "Game",
                  lotti: "assest/sport.json"),
              desingcard().carde(
                  kolor: Colors.red,
                  title: "Histroy",
                  lotti: "assest/history.json"),
            ])),
        ListTile(
            title: const Text('Trendind Quiz',
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Wrap(children: const [
              Text('View all',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.w400)),
              Icon(Icons.arrow_forward, color: Colors.deepPurple),
            ])),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              desingcard().advancedcard(
                  img: "assest/flowe loading.json",
                  title: '''Let's Memorize the Name of Flowers''',
                  name: "Darshan Patel",
                  avtar: "assest/15.jpg",
                  kolr: Colors.black),
              desingcard().advancedcard(
                  img: "assest/greenearthanimation.json",
                  title: '''Earth is our home and will Always be''',
                  name: "Abhu Sambhu",
                  avtar: "assest/14.jpg",
                  kolr: const Color.fromARGB(139, 156, 8, 161)),
            ],
          ),
        ),
        ListTile(
            title: const Text('Top Picks',
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Wrap(children: const [
              Text('View all',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.w400)),
              Icon(Icons.arrow_forward, color: Colors.deepPurple),
            ])),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              desingcard().advancedcard(
                  img: "assest/greenify-the-earth.json",
                  title: '''Save life Around, Green out Earth!''',
                  name: "Amit Rana",
                  avtar: "assest/10.jpg",
                  kolr: const Color.fromARGB(116, 92, 191, 64)),
              desingcard().advancedcard(
                  img: "assest/quiz-mode.json",
                  title: '''Play Quizzes,Be Smart & Have Fun!''',
                  name: "Abhu Sambhu",
                  avtar: "assest/14.jpg",
                  kolr: const Color.fromARGB(99, 3, 3, 244))
            ])),
      ]),
    );
  }
}

class homemodel {
  String image;
  String title;
  homemodel({
    required this.image,
    required this.title,
  });
}
