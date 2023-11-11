// ignore_for_file: depend_on_referenced_packages
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:lottie/lottie.dart';

class screen4 extends StatefulWidget {
  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  bool _hide = true;
  bool valuefirst = false;
  _showSuccess() {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: const Duration(milliseconds: 500),
      context: context,
      pageBuilder: (ctx, anim1, anim2) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        title: Lottie.asset("assest/successful.json",
            filterQuality: FilterQuality.high, frameRate: FrameRate.max),
        elevation: 2,
        content: SizedBox(
          height: 150,
          width: 180,
          child: Column(
            children: const [
              Text('Successful!',
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '''Please wait a moment we are 
          preparing for you...''',
                  textAlign: TextAlign.justify,
                ),
              ),
              CircularProgressIndicator(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2 * anim1.value,
          sigmaY: 2 * anim1.value,
        ),
        child: FadeTransition(
          opacity: anim1,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("""Create an account 🖊""",
                    style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                    textAlign: TextAlign.justify,
                    textScaleFactor: 2),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("""  Please enter your username email address 
and password.if you forget it, than you have 
                    to do forget password.""",
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5))),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: Text('Username',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.done_outline_sharp,
                            color: Colors.greenAccent),
                        hintText: "Abhu_shambhu"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: Text('Email',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: true,
                      decoration:
                          const InputDecoration(hintText: "A_bc@gmail.com")),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: Text('password',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 20, color: Colors.deepPurpleAccent),
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: true,
                    obscureText: _hide,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => setState(() => _hide = !_hide),
                          icon: Icon(_hide
                              ? Icons.visibility_off_outlined
                              : Icons.visibility),
                        ),
                        hintText: "Password"),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Checkbox(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    value: valuefirst,
                    onChanged: (value) => setState(() => valuefirst = value!),
                  ),
                  const Text('Remembere me')
                ]),
                const Center(child: Text('OR')),
                Center(
                    child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
                const SizedBox(height: 10),
                Center(
                    child: SignInButton(
                  Buttons.AppleDark,
                  onPressed: () {},
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 230,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        child: const Text('Singup',
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                        onPressed: () => _showSuccess()),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
