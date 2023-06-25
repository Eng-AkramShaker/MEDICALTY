// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widget/drawer/insupport.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
                      'Support',
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
                        Column(
                          children: [
                            Container(
                                height: 200,
                                width: double.infinity,
                                color: Color(0xffEDEDED),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 18),
                                  child: Column(
                                    children: [
                                      InSupport(
                                        text: 'Support Chat ',
                                        textt: 'get support from out team',
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                      InSupport(
                                        text: 'Help center ',
                                        textt:
                                            'Read articies about evrey feature in invoicer',
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                      InSupport(
                                        text: 'Help Center on Youtube',
                                        textt:
                                            'Read articies about evrey feature in invoicer',
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        )
                      ]))),
            ])));
  }
}
