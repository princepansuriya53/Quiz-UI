import 'package:flutter/material.dart';
import 'package:quzzio/Commnfile/common.dart';

class Findfriend extends StatefulWidget {
  @override
  _FindfriendState createState() => _FindfriendState();
}

class _FindfriendState extends State<Findfriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Find Friend', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search email name or ohone number",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 320,
                  width: 350,
                  child: Card(
                    elevation: 3,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: const [
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text('Search Contect',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text('Find friends by phone number'),
                              leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assest/book.jpg')),
                              trailing: Icon(Icons.arrow_forward_ios_sharp))),
                      Divider(
                          color: Colors.black,
                          thickness: 0,
                          endIndent: 20,
                          indent: 20),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                'Contect To Facebook',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Find contact via Facebook'),
                              leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assest/fb.png')),
                              trailing: Icon(Icons.arrow_forward_ios_sharp))),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        endIndent: 20,
                        indent: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                            title: Text(
                              'Invite friends',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Find contact via Facebook'),
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assest/pen.jpg')),
                            trailing: Icon(Icons.arrow_forward_ios_sharp)),
                      ),
                    ]),
                  ),
                ),
                ListTile(
                  title: const Text('People you may know',
                      textScaleFactor: 1.3,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Wrap(children: const [
                    Text('View all',
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w400)),
                    Icon(Icons.arrow_forward, color: Colors.deepPurple),
                  ]),
                ),
                desingcard().follow(title: "Mohit Bhai", img: "assest/6.jpg"),
                desingcard().follow(title: 'Sagr Bhai', img: "assest/3.jpg"),
                desingcard()
                    .follow(title: 'Darshna Gnan Swami', img: "assest/1.jpg"),
                desingcard().follow(title: "Abhu Sambhu", img: "assest/17.jpg"),
                desingcard().follow(title: 'Amit Rana', img: "assest/15.jpg"),
                desingcard().follow(title: 'Surya Bhai', img: "assest/13.png"),
                desingcard().follow(title: "Mr King", img: "assest/15.jpg")
              ],
            ),
          )),
    );
  }
}
