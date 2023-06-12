// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

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
                      'Choose a plan ',
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
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
                              Container(
                                height: 400,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xff012939),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Pro Monthly ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Switzer',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '\$ 19.99',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Switzer',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Impress clients and get paid faster with online\nquotes and invoices.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Switzer',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 17,
                                      ),
                                      Text_Sub(
                                          text: 'Manage unlimited clients'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text:
                                              'Send unlimited invoices and quotes'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text: 'Accept and track payments'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text: 'Real-time scheduling for job'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(text: '10 user including '),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text:
                                              'nlimited clients,invoices and quotes '),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Save 19% yearly ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Switzer',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Center(
                                        child: Container(
                                          height: 51,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              color: Color(0xff7CB041)),
                                          child: Center(
                                            child: Text(
                                              'Choose a plan ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'Switzer',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 400,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xff012939),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Pro Monthly ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Switzer',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '\$ 25.99 ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Switzer',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Impress clients and get paid faster with online\nquotes and invoices.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Switzer',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 17,
                                      ),
                                      Text_Sub(
                                          text: 'Manage unlimited clients'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text:
                                              'Send unlimited invoices and quotes'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text: 'Accept and track payments'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text_Sub(
                                          text: 'Real-time scheduling for job'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Save 12% yearly ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Switzer',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Center(
                                        child: Container(
                                          height: 51,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              color: Color(0xff7CB041)),
                                          child: Center(
                                            child: Text(
                                              'Choose a plan ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'Switzer',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 230,
                                width: double.infinity,
                                color: Color(0xff012939),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 26, left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Once you subscribe, your plan will be charged to your\nGoogle Play Store Account at the time of purchase and\nautomatically renews unless cancelled at least 24 hours\nbefore the end of the current period. Cancel your subscription at anytime through your Google Store Account ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Switzer',
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Previously subscribed?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Switzer',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        'Restore Purchases and Privacy Policy Read our \nTerms of Service ',
                                        style: TextStyle(
                                            color: Color(0xff7CB041),
                                            fontSize: 14,
                                            fontFamily: 'Switzer',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ])))
            ])));
  }
}

class Text_Sub extends StatefulWidget {
  String text;
  Text_Sub({super.key, required this.text});

  @override
  State<Text_Sub> createState() => _Text_SubState();
}

class _Text_SubState extends State<Text_Sub> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: Color(0xff7BB042),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          widget.text,
          // 'Manage unlimited clients ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Switzer',
          ),
        )
      ],
    );
  }
}
