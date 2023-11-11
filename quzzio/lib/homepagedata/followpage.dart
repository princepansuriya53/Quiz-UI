import 'package:flutter/material.dart';

import '../Commnfile/common.dart';

class follow extends StatefulWidget {
  @override
  _followState createState() => _followState();
}

class _followState extends State<follow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(backgroundColor: Colors.white, actions: const [
            Icon(Icons.send),
            SizedBox(width: 10),
            Icon(Icons.more_outlined),
            SizedBox(width: 10)
          ]),
          body: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(children: [
              Container(
                height: 120,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage('assest/Books.jpg'),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 8),
              ListTile(
                leading: ClipRect(child: Image.asset('assest/1.jpg')),
                title: Wrap(
                  children: const [
                    Text('Mohit Mangukiyu'),
                    SizedBox(width: 8),
                    Icon(size: 19, Icons.verified, color: Colors.blue)
                  ],
                ),
                subtitle: const Text("@Mr Mohit"),
                trailing: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(18)),
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        onPressed: () {},
                        child: const Text('Follow'))),
              ),
              Divider(
                  endIndent: 10,
                  indent: 10,
                  color: Colors.black.withOpacity(0.5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text('265',
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Quizzo')
                      ],
                    ),
                    VerticalDivider(color: Colors.black.withOpacity(0.3)),
                    Column(
                      children: const [
                        Text('32M',
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Plays')
                      ],
                    ),
                    VerticalDivider(color: Colors.black.withOpacity(0.3)),
                    Column(
                      children: const [
                        Text('274M',
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Players')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Divider(
                  endIndent: 10,
                  indent: 10,
                  color: Colors.black.withOpacity(0.5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text('49',
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Collection')
                      ],
                    ),
                    VerticalDivider(color: Colors.black.withOpacity(0.3)),
                    Column(
                      children: const [
                        Text('927.6K',
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('followers')
                      ],
                    ),
                    VerticalDivider(color: Colors.black.withOpacity(0.3)),
                    Column(children: const [
                      Text('128',
                          textScaleFactor: 1.2,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Following')
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Divider(
                  endIndent: 10,
                  indent: 10,
                  color: Colors.black.withOpacity(0.5)),
              const SizedBox(height: 20),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: const Color(0xff6849ff),
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(text: 'Quizzo'),
                    Tab(text: 'Collection'),
                    Tab(text: 'About'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "265 Quizzon",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Wrap(
                                children: const [
                                  Text("Newest",
                                      style: TextStyle(
                                          color: Color(0xff7659ff),
                                          fontSize: 18)),
                                  SizedBox(width: 10),
                                  Icon(Icons.filter_list_alt,
                                      color: Color(0xff7659ff)),
                                  SizedBox(width: 10),
                                ],
                              )
                            ],
                          ),
                        ),
                        discoverd().cards(
                            kolor: Colors.blueGrey,
                            pic: "assest/school.json",
                            qs: "18 Qs",
                            tit: "Back to School Quizzes..",
                            month: "2 Days Ago",
                            view: "5.6 K plays",
                            name: "",
                            avtar: ""),
                        discoverd().cards(
                            kolor: Colors.blueGrey,
                            pic: "assest/idea.json",
                            qs: "14 Qs",
                            tit: "Behind the Samrt Brain...",
                            month: "2 Week ago",
                            view: "303 K plays",
                            name: "",
                            avtar: ""),
                      ],
                    ),
                  ),
                  Center(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 200,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 90, left: 10),
                                child: Text('Education',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                          ],
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Quizzy is a fun and educational quiz app that can help you learn anything, anywhere. With Quizzy, you can create, take, and share quizzes on a wide variety of topics, from math and science to history and pop culture.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      BottomAppBar(
                        elevation: 0,
                        padding: const EdgeInsets.only(top: 200),
                        child: Row(children: const [
                          SizedBox(width: 10),
                          ClipRect(child: Icon(Icons.browser_updated)),
                          SizedBox(width: 30),
                          ClipRect(child: Icon(Icons.connect_without_contact)),
                          SizedBox(width: 30),
                          ClipRect(child: Icon(Icons.spa_rounded)),
                          SizedBox(width: 30),
                          ClipRect(child: Icon(Icons.games)),
                          SizedBox(width: 30),
                        ]),
                      )
                    ],
                  ),
                ]),
              )
            ]),
          )),
    );
  }
}
