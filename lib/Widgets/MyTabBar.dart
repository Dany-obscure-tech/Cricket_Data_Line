import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/Widgets/ScoreCardWidget/ScoreCardWidget.dart';

import 'InfoWidget/InfoWidget.dart';
import 'InfoWidget/SquadTab.dart';
import 'OversWidget/OversWidget.dart';
import 'PointsTableWidget/PointsTableWidget.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _TabBarState();
}

class _TabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      'Eng vs AUS, T20',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: greyColor,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/ind.png'))),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IND',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 12,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            '213-4',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(20.0)',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('vs'),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('SA'),
                      Row(
                        children: [
                          Text(
                            '(20.0)',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                          Text(
                            '213-4',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: greyColor,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/pak.png'))),
                      ),
                    ),
                  ),
                ],
              ),
              DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const TabBar(
                            isScrollable: true,
                            labelColor: redAccent,
                            indicatorWeight: 5.0,
                            indicatorColor: redAccent,
                            unselectedLabelColor: greyColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(text: 'Info'),
                              Tab(text: 'Scorecard'),
                              Tab(text: 'Overs'),
                              Tab(text: 'Points table'),
                            ],
                          ),
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                            height: MediaQuery.of(context).size.height /
                                1.4, //height of TabBarView
                            // color: whiteColor,
                            child: const TabBarView(children: <Widget>[
                              InfoWidget(),
                              ScoreCardWidget(),
                              OversWidget(),
                              PointsTableWidget(),
                            ]))
                      ])),
            ]),
      ),
    );
  }
}
