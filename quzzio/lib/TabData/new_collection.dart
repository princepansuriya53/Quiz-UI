// ignore_for_file: unrelated_type_equality_checks, use_build_context_synchronously
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class collection_new extends StatefulWidget {
  @override
  State<collection_new> createState() => collection_newState();
}

class collection_newState extends State<collection_new> {
  ImagePicker picker = ImagePicker();
  XFile? image;
  Future<void> _showchoiceDiloag(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Choose Option',
              style: TextStyle(color: Colors.deepPurpleAccent)),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const Divider(height: 1, color: Colors.blue),
                ListTile(
                  title: const Text('Gallery'),
                  leading: const Icon(Icons.photo, color: Colors.blue),
                  onTap: () {
                    _Gallery_widget(context);
                  },
                ),
                const Divider(height: 1, color: Colors.blue),
                ListTile(
                  title: const Text('Camera'),
                  leading: const Icon(Icons.camera_alt, color: Colors.blue),
                  onTap: () {
                    _Camera_widget(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const FaIcon(FontAwesomeIcons.times),
        ),
        backgroundColor: Colors.white,
        title: const Text('Create new Collection',
            style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
              child: InkWell(
                onTap: () async {
                  _showchoiceDiloag(context);
                },
                child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border:
                            Border.all(color: Colors.deepPurple, width: 1.5)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          width: 300,
                          child: image == null
                              ? const Icon(Icons.photo,
                                  color: Colors.deepPurpleAccent, size: 50)
                              : Container(
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        filterQuality: FilterQuality.high,
                                        isAntiAlias: true,
                                        image: FileImage(
                                          File(image!.path),
                                        ),
                                      )),
                                ),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text('Add Cover Image',
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Title',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter a Collection Title")),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Visible to',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: DropdownButtonFormField2(
                style: Theme.of(context).textTheme.titleLarge,
                hint: const Text('Select your collection type'),
                isExpanded: true,
                decoration:
                    const InputDecoration(contentPadding: EdgeInsets.all(10)),
                onChanged: (value) {},
                items: const [
                  DropdownMenuItem(value: 1, child: Text('Private')),
                  DropdownMenuItem(value: 2, child: Text('Only me')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: SizedBox(
                width: 280,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  child: const Text('Create', textScaleFactor: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _Gallery_widget(BuildContext context) async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      PickedFile != image;
    });
    Navigator.pop(context);
  }

  void _Camera_widget(BuildContext context) async {
    image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      PickedFile != image;
    });
    Navigator.pop(context);
  }
}
