import 'package:flutter/material.dart';
import 'package:quzzio/homepagedata/search.dart';
import 'library.dart';
import 'homescreen.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _index = 0;
  final List _widgetoption = [
    const home(key: PageStorageKey('home')),
    Library(),
    const Center(
      child: Text('Coming Soon', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    const Center(
      child: Text('Coming Soon', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    const Center(
      child: Text('Coming Soon', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assest/Logo.jpg",
            filterQuality: FilterQuality.high, fit: BoxFit.contain),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              showSearch(context: context, delegate: CitySearch());
            },
          ),
          const SizedBox(width: 10),
          const Icon(Icons.circle_notifications_rounded),
          const SizedBox(width: 30)
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Quizzo', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: PageStorage(
        child: _widgetoption[_index],
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        onTap: _onClick,
        enableFeedback: true,
        currentIndex: _index,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.screen_search_desktop_outlined),
            label: "Library",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.join_inner, color: Colors.deepPurpleAccent),
            label: "Join",
            activeIcon: Icon(Icons.join_full_outlined, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create_rounded),
            label: "Create",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.white,
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void _onClick(int index) => setState(() => _index = index);
}
