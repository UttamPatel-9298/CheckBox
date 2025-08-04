// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

void main() {
  runApp(Checkbox());
}

class Checkbox extends StatelessWidget {
  const Checkbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxPage(),
      title: 'ChackBox Page',
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  var checkbox1 = false;
  var checkbox2 = false;
  var checkbox3 = false;
  var checkbox4 = false;
  var mylist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Select what do you want!',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: const Color.fromARGB(255, 74, 116, 135),

              child: CheckboxListTile(
                value: checkbox1,
                title: Text('Web'),
                onChanged: (value) => setState(() {
                  if (checkbox1) {
                    checkbox1 = false;
                    mylist.remove('Web');
                  } else {
                    checkbox1 = true;
                    mylist.add('Web');
                  }
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: const Color.fromARGB(255, 74, 116, 135),

              child: CheckboxListTile(
                value: checkbox2,
                title: Text('Android'),
                onChanged: (value) => {
                  setState(() {
                    if (checkbox2) {
                      checkbox2 = false;
                      mylist.remove('App');
                    } else {
                      checkbox2 = true;
                      mylist.add('App');
                    }
                  }),
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: const Color.fromARGB(255, 74, 116, 135),

              child: CheckboxListTile(
                value: checkbox3,
                title: Text("Ios"),
                onChanged: (value) => {
                  setState(() {
                    if (checkbox3) {
                      checkbox3 = false;
                      mylist.remove("Ios");
                    } else {
                      checkbox3 = true;
                      mylist.add("Ios");
                    }
                  }),
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: const Color.fromARGB(255, 74, 116, 135),
              child: CheckboxListTile(
                value: checkbox4,
                title: Text("Destop"),
                onChanged: (value) => {
                  setState(() {
                    if (checkbox4) {
                      checkbox4 = false;
                      mylist.remove("Destop");
                    } else {
                      checkbox4 = true;
                      mylist.add("Destop");
                    }
                  }),
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Selected Values are :  ${mylist}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
