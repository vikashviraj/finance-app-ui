// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:koshex/Home/Widgets/bottom_nav_bar.dart';
import 'package:koshex/Home/Widgets/live_market.dart';
import 'package:koshex/Home/Widgets/overview_section.dart';
import 'package:koshex/Home/Widgets/profile_head.dart';
import 'package:koshex/Home/Widgets/profile_insight.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 275,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/top-bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  ProfileHead(),
                  ProfileInsight(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          LiveMarket(),
          SizedBox(
            height: 15,
          ),
          OverViewSection()
        ],
      )),
    );
  }
}
