import 'dart:ui';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:quzzio/Commnfile/common.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:quzzio/homepage.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (_) => mainscreen()));

  bool valuefirst = false;

  final List<String> age = [
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
  ];

  final List<String> country = [
    "India",
    "Sri Lanka",
    "Afghanistan",
    "Albania",
    "Andorra",
    "Algeria	",
    "Angola	",
    "Antigua and Barbuda	",
    "Argentina",
    "Australia",
    "Bangladesh",
    "Benin",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso	",
    "Burundi",
    "Colombia",
    "Costa Rica	",
    "Djibouti",
    "Fiji	",
    "Finland",
    "Gambia",
    "Germany",
  ];

  var _value;

  var _age;

  bool _hide = true;
  _showSuccess() {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: const Duration(milliseconds: 500),
      context: context,
      pageBuilder: (ctx, anim1, anim2) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        title: Lottie.asset("assest/successful.json"),
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
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: IntroductionScreen(
          onDone: () => _onIntroEnd(context),
          showSkipButton: false,
          showBackButton: true,
          back: const Icon(Icons.arrow_back, color: Colors.black),
          skip:
              const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done:
              const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(30),
          controlsPadding: kIsWeb
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color.fromARGB(255, 141, 24, 24),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          ),
          dotsContainerDecorator: const ShapeDecoration(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
          ),
          key: introKey,
          globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          globalHeader: const Align(
            alignment: Alignment.topRight,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 16, right: 16),
              ),
            ),
          ),
          pages: [
            PageViewModel(
              title: "What type of account do you like to create? 👱🏻‍♂️",
              bodyWidget: Column(
                children: [
                  const Text(
                    "You can Skip it if you're not sure",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: "Personal",
                    img: "assest/prsonal.json",
                    ckolor: Color.fromARGB(255, 61, 82, 119),
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    txt1: "Teacher",
                    context: context,
                    img: "assest/teacher.json",
                    ckolor: Color.fromARGB(255, 135, 112, 41),
                    color: Colors.yellow,
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: 'Student',
                    img: "assest/student.json",
                    ckolor: Colors.greenAccent,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 20),
                  cardpage1(
                    context: context,
                    txt1: "Professional",
                    img: "assest/profe.json",
                    color: Colors.red,
                    ckolor: Color.fromARGB(255, 182, 107, 107),
                  )
                ],
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Describe a  Work  place  that suit 👜",
              decoration: pageDecoration,
              bodyWidget: Column(children: [
                const Text(
                  "You can Skip it if you're not sure",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "School",
                  img: "assest/higher education.json",
                ),
                const SizedBox(height: 20),
                cardpage1(
                    context: context,
                    txt1: "higher Education",
                    img: "assest/school.json",
                    ckolor: const Color.fromARGB(255, 194, 181, 59),
                    color: Colors.yellow),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "Teams",
                  img: "assest/teamwork.json",
                  ckolor: Colors.greenAccent,
                  color: const Color.fromARGB(255, 57, 167, 61),
                ),
                const SizedBox(height: 20),
                cardpage1(
                  context: context,
                  txt1: "Business",
                  img: "assest/business.json",
                  ckolor: const Color.fromARGB(255, 140, 82, 82),
                  color: Colors.red,
                )
              ]),
            ),
            PageViewModel(
              title: "Create An Account 🖊",
              decoration: pageDecoration,
              bodyWidget: Column(children: [
                const Text(
                  """Please complete your profile. Don't worry. your data will remain private and only you can see it.""",
                  textScaleFactor: 1.02,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Container(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 10),
                            child: Text(
                              'Full Name',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: TextFormField(
                                autocorrect: true,
                                decoration:
                                    const InputDecoration(hintText: "MR XYZ ")),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 20),
                            child: Text(
                              'Date Of Birth',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: TextFormField(
                              autocorrect: true,
                              keyboardType: TextInputType.datetime,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.date_range_rounded),
                                  hintText: "12/2/1999"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 20),
                            child: Text(
                              'Phone Number',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.numbers),
                                  hintText: "95585 02111"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 20),
                            child: Text(
                              'Country',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: DropdownButtonFormField2(
                              isDense: true,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                              ),
                              onChanged: (value) =>
                                  setState(() => _value = value),
                              hint: const Text('Select Your Country'),
                              items: country
                                  .map(
                                    (itemu) => DropdownMenuItem(
                                        value: itemu,
                                        child: Text(itemu,
                                            style:
                                                const TextStyle(fontSize: 18))),
                                  )
                                  .toList(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 12, top: 10),
                            child: Text(
                              'Age',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: DropdownButtonFormField2(
                                isDense: true,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                onChanged: (value) =>
                                    setState(() => _age = value),
                                hint: const Text('Select Your Age'),
                                items: age
                                    .map((itemu) => DropdownMenuItem(
                                        value: itemu,
                                        child: Text(
                                          itemu,
                                          style: const TextStyle(fontSize: 18),
                                        )))
                                    .toList()),
                          ),
                        ])),
                const SizedBox(height: 25),
                Center(
                  child: SizedBox(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          child: const Text('Continue',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600)),
                          onPressed: () {})),
                ),
              ]),
            ),
            PageViewModel(
                decoration: pageDecoration,
                title: "Create an account 🖊",
                bodyWidget: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          """Please enter your username,email address and password.if you forget it, than you have to do forget password.""",
                          textScaleFactor: 1.02,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.visible,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20, top: 20),
                          child: Text(
                            'Username',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
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
                          child: Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: true,
                            decoration: const InputDecoration(
                                hintText: "A_bc@gmail.com"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20, top: 20),
                          child: Text(
                            'password',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: TextFormField(
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                value: valuefirst,
                                onChanged: (value) =>
                                    setState(() => valuefirst = value!),
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
                          Buttons.Apple,
                          onPressed: () {},
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        )),
                        SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  child: const Text('Singup',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  onPressed: () => _showSuccess())),
                        ),
                      ]),
                ))
          ],
          globalFooter: SizedBox(
              width: 280,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  backgroundColor: const Color.fromARGB(255, 238, 237, 242),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                child: const Text('Skip',
                    style: TextStyle(
                        color: Color.fromARGB(255, 109, 80, 195),
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
                onPressed: () => _onIntroEnd(context),
              )),
          showBottomPart: true,
          skipStyle: const ButtonStyle(alignment: Alignment.topCenter),
        ),
      ),
    );
  }
}
