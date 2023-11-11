import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class npassword extends StatefulWidget {
  @override
  State<npassword> createState() => _npasswordState();
}

class _npasswordState extends State<npassword> {
  bool _ishide = true;
  bool _hide = true;
  bool _fisrt = false;
  _showDialoag() async {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: const Duration(milliseconds: 500),
      context: context,
      pageBuilder: (ctx, anim1, anim2) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        title: Lottie.asset('assest/welcome back.json', height: 80),
        elevation: 2,
        content: SizedBox(
          height: 150,
          width: 180,
          child: Column(
            children: [
              const Text('Welcome Back!',
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w500)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '''You have successfully reset and
        created a new password''',
                  textAlign: TextAlign.justify,
                ),
              ),
              ElevatedButton(child: const Text('Go to Home'), onPressed: () {}),
            ],
          ),
        ),
      ),
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
        child: FadeTransition(opacity: anim1, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 40, top: 30, left: 20),
              child: Text(
                'Create new Password 🔐',
                textScaleFactor: 1.90,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40, top: 10, left: 20),
              child: Text(
                '''Save the new password in a safe place,if you 
forget it than you have to do a forget 
password again.''',
                textAlign: TextAlign.justify,
                textScaleFactor: 1,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'create a new password',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                obscureText: _hide,
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => setState(() => _hide = !_hide),
                        icon: Icon(
                          _hide
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                        )),
                    hintText: "Password"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Confrom a new Password',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                obscureText: _ishide,
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => setState(() => _ishide = !_ishide),
                        icon: Icon(
                          _ishide
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                        )),
                    hintText: "Password"),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Checkbox(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                value: _fisrt,
                onChanged: (value) => setState(() => _fisrt = value!),
              ),
              const Text('Remembere me'),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Center(
                child: SizedBox(
                    height: 55,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text('Continue',
                          textScaleFactor: 1.50,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300)),
                      onPressed: () {
                        _showDialoag();
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
