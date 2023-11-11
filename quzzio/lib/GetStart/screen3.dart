import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  var _value;

  var _age;

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
    "Finland",
    "Gambia",
    "Germany",
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text("Create An Account 🖊",
                    style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                    textAlign: TextAlign.justify,
                    textScaleFactor: 2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  """               Please complete your profile.
        Don't worry. your data will remain private 
                and only you can see it.""",
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 10),
                            child: Text('Full Name',
                                style: TextStyle(fontWeight: FontWeight.w700)),
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
                            child: Text('Date Of Birth',
                                style: TextStyle(fontWeight: FontWeight.w700)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: TextFormField(
                                autocorrect: true,
                                keyboardType: TextInputType.datetime,
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(Icons.date_range_rounded),
                                    hintText: "12/2/1999")),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20, top: 20),
                            child: Text('Phone Number',
                                style: TextStyle(fontWeight: FontWeight.w700)),
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
                            child: Text('Country',
                                style: TextStyle(fontWeight: FontWeight.w700)),
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
                                  .map((itemu) => DropdownMenuItem(
                                      value: itemu,
                                      child: Text(itemu,
                                          style:
                                              const TextStyle(fontSize: 18))))
                                  .toList(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 12, top: 10),
                            child: Text('Age',
                                style: TextStyle(fontWeight: FontWeight.w700)),
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
                                    .map(
                                      (itemu) => DropdownMenuItem(
                                          value: itemu,
                                          child: Text(itemu,
                                              style: const TextStyle(
                                                  fontSize: 18))),
                                    )
                                    .toList(),
                              ))
                        ]),
                  )),
              const SizedBox(height: 25),
              Center(
                child: SizedBox(
                    width: 280,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        child: const Text('Continue',
                            textScaleFactor: 1.8,
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        onPressed: () {})),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
