import 'package:flutter/material.dart';

import 'otp.dart';

class forgetpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Text('Forget Password 🔑',
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textScaleFactor: 2.1),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 40),
                child: Text('''Enter your email address to get an OTP code 
to reset your password'''),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  decoration: const InputDecoration(
                      hintText: "Enter the your forgte email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 420),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otp(),
                              ));
                        },
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
