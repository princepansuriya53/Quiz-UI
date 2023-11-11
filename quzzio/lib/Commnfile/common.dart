// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget cardpage1({
  required String txt1,
  required var img,
  required BuildContext context,
  Color ckolor = Colors.black,
  Color color = Colors.blue,
}) {
  return SizedBox(
    child: Row(children: [
      Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(15), bottomStart: Radius.circular(15)),
        ),
        height: MediaQuery.of(context).size.height / 9.08,
        width: MediaQuery.of(context).size.width / 4,
        child: CircleAvatar(
            backgroundColor: ckolor,
            child: LottieBuilder.asset(
              img,
              filterQuality: FilterQuality.high,
            )),
      ),
      Container(
        height: 90,
        width: 230,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 92, 89, 89), width: 0.23),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15))),
        child: Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
            child: Text(
              txt1,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ),
    ]),
  );
}

class desingcard {
  Widget follow({
    required String title,
    required var img,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text('Follow'),
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        ),
        leading: CircleAvatar(radius: 39, backgroundImage: AssetImage(img)),
      ),
    );
  }

  Widget advancedcard({
    required var img,
    required String title,
    required String name,
    required var avtar,
    required Color kolr,
  }) {
    return SizedBox(
      height: 230,
      width: 212,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 230,
                  decoration: BoxDecoration(
                      color: kolr,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Lottie.asset(img,
                      repeat: false,
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.contain)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(title,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, right: 10, bottom: 0, left: 10),
                    child: CircleAvatar(
                        radius: 10, backgroundImage: AssetImage(avtar)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(name),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Widget carde({
    required Color? kolor,
    required String title,
    required var lotti,
  }) {
    return SizedBox(
      height: 160,
      width: 190,
      child: Card(
          color: kolor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(children: [
            Center(child: Lottie.asset(lotti, fit: BoxFit.fill)),
            Padding(
              padding: const EdgeInsets.only(top: 119, left: 10),
              child: Text(
                title,
                textScaleFactor: 1.2,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ])),
    );
  }
}

class discoverd {
  Widget cards({
    required Color? kolor,
    required var pic,
    required String qs,
    required String tit,
    required String month,
    required String view,
    required String name,
    required var avtar,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 110,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.02),
                color: kolor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              child: Stack(alignment: Alignment.center, children: [
                Lottie.asset(pic, repeat: false),
                Padding(
                    padding: const EdgeInsets.only(top: 70, left: 90),
                    child: SizedBox(
                        child: Card(
                      elevation: 3,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Colors.blueAccent,
                      child:
                          Text(qs, style: const TextStyle(color: Colors.white)),
                    )))
              ]),
            ),
          ),
          Container(
              height: 110,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.02),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(tit,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(month, textScaleFactor: 0.7),
                        const SizedBox(width: 10),
                        Text("• ${view}", textScaleFactor: 0.7),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(avtar))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(name),
                      ),
                    ],
                  ),
                )
              ])),
        ],
      ),
    );
  }
}
