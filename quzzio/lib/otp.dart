// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'newpassword.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff7f6fb),
      ),
      backgroundColor: const Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 18),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Lottie.asset('assest/otp.json',
                      filterQuality: FilterQuality.high),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Enter your OTP code number",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),
                Container(
                  width: 580,
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textFieldOTP(first: true, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: true),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => npassword()),
                            );
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepPurpleAccent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  "Didn't you receive any code?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18),
                const Text(
                  "Resend New Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 85,
      width: 65,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
            )),
      ),
    );
  }
}
