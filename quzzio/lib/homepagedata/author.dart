import 'package:flutter/material.dart';

import 'followpage.dart';

class Topauthor extends StatefulWidget {
  @override
  State<Topauthor> createState() => _TopauthorState();
}

class _TopauthorState extends State<Topauthor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [Icon(Icons.person_search_rounded), SizedBox(width: 30)],
        title: const Text('Top Authors', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => follow()));
            },
            subtitle: const Text('@Mohit_ranger'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [
                Text('Mohit Mangukiya'),
                Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/1.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Darshan_pambh'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [Text('Darshan Pambhar')],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/2.png'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Bhuri_Bhundi'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  backgroundColor: Colors.white,
                  side: const BorderSide(style: BorderStyle.solid),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {},
                child: const Text(
                  'Following',
                  style: TextStyle(color: Colors.deepPurpleAccent),
                )),
            title: Row(
              children: const [
                Text('Ms Bhuri Patel'),
                Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/avtar 2.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@ITS_kiku'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [
                Text('Kriyan Pansuriya'),
                Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/3.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Mr_vaju'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [
                Text('Vraj Mulani'),
                Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/4.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Miss_Dhefu'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Colors.deepPurpleAccent, style: BorderStyle.solid),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {},
                child: const Text(
                  'Following',
                  style: TextStyle(color: Colors.deepPurpleAccent),
                )),
            title: Row(
              children: const [Text('Defali Patel')],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/5.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Abhu_Sambhu'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [Text('Abhu Kikani')],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/6.jpg'), radius: 20),
          ),
          ListTile(
            subtitle: const Text('@Gor_Pyor'),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: const Text('Follow')),
            title: Row(
              children: const [
                Text('Ruto Markana'),
                Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assest/7.jpg'), radius: 20),
          ),
        ],
      ),
    );
  }
}
