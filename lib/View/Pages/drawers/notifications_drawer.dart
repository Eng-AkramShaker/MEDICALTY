// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import '../../widget/drawer/row_switch.dart';

class Notifications_Drawer extends StatelessWidget {
  const Notifications_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xff4267B2),
                Color(0xffF5F5F5),
                Color(0xffF5F5F5),
                Color(0xffF5F5F5),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Switzer',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox()
                ],
              ),
              Expanded(
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Receive push notification on your mobile or\ntable devices',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Switzer',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row_Switch(
                          text: 'Today’s schedule changed',
                        ),
                        Row_Switch(
                          text: 'New request',
                        ),
                        Row_Switch(
                          text: 'Client viewed quote',
                        ),
                      ])))
            ]),
          ),
        ));
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color(0xff4267B2),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
