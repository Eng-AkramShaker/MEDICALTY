// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widget/drawer/insupport.dart';

class About extends StatelessWidget {
  const About({super.key});

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox()
                  ],
                ),
              ),
              Expanded(
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(children: [
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child:
                                      Text('Contractor Solution Information ')),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'App version ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'v2.2.1 (1634443456) id user',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Email address',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'jhone@gmail.com ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Account time ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Asia/ amman ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'March 31,2023 at 13:30',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Device ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Nonor Hncma-Q (Android11)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Switzer',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InSupport(
                                  text: 'Privacy policy ',
                                  textt: 'get support from out team'),
                              Divider(
                                thickness: 1,
                              ),
                              InSupport(
                                  text: 'Terms of service',
                                  textt:
                                      'Read articies about evrey feature in invoicer'),
                              Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                        )
                      ]))),
            ])));
  }
}
