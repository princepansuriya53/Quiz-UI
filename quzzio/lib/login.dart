// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:quzzio/homepage.dart';
import 'forgetpass.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String email = "";
  String pwd = "";
  bool valuefirst = false;
  bool _hide = true;
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
              padding: EdgeInsets.only(top: 80, left: 20, right: 20),
              child: Text('Hello There 👋🏻',
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textScaleFactor: 2.1),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40, top: 20, left: 10),
              child:
                  Text('Email', style: TextStyle(fontWeight: FontWeight.w700)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                decoration: const InputDecoration(hintText: "A_bc@gmail.com"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, top: 20, left: 10),
              child: Text(
                'password',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                onChanged: (value) => pwd = value,
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                obscureText: _hide,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => setState(() {
                              _hide = !_hide;
                            }),
                        icon: Icon(
                          _hide
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
                value: valuefirst,
                onChanged: (value) => setState(() => valuefirst = value!),
              ),
              const Text('Remembere me')
            ]),
            Center(
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => forgetpass(),
                          ));
                    },
                    child: const Text(
                      'Forgte Password?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 109, 80, 195)),
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 280),
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
                      child: const Text('SIGN IN',
                          textScaleFactor: 1.50,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mainscreen(),
                            ));
                        // api();
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void api() async {
    http.Response res = await Authorepo.upi(email: email, pwd: pwd);

    print("${Apiurl.url}?action=signin&email=$email&pwd=$pwd");

    var response = jsonDecode(res.body);
    if (response["message"] == "Successfully Login") {
      ScaffoldMessenger.of(context)
          .showSnackBar(
            SnackBar(content: Text('${response["message"]}')),
          )
          .closed
          .then(
            (value) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => mainscreen(),
                )),
          );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${response["message"]}')),
      );
    }
  }
}

class Apiurl {
  static String url = "https://vstechno.co.in/news/api/user.php";
}

class Authorepo {
  static Future upi({
    required email,
    required pwd,
  }) async {
    return await http
        .get(Uri.parse("${Apiurl.url}?action=signin&email=$email&pwd=$pwd"));
  }
}
