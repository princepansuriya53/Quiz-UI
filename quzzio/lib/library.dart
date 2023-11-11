import 'package:flutter/material.dart';

import 'TabData/collection.dart';
import 'TabData/favorite.dart';
import 'TabData/tab1.dart';

class Library extends StatefulWidget {
  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            automaticIndicatorColorAdjustment: true,
            enableFeedback: true,
            isScrollable: true,
            unselectedLabelColor: Color.fromARGB(255, 163, 176, 182),
            labelColor: Colors.deepPurpleAccent,
            indicatorColor: Colors.deepPurpleAccent,
            tabs: [
              Tab(text: 'My Quizzo'),
              Tab(text: 'Favorites'),
              Tab(text: 'Collaboration'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
          ],
        ),
      ),
    );
  }
}
