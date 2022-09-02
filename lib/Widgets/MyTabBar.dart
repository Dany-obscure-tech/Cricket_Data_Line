import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/Widgets/ScoreCardWidget/ScoreCardWidget.dart';

import 'InfoWidget/InfoWidget.dart';
import 'OversWidget/OversWidget.dart';
import 'PointsTableWidget/PointsTableWidget.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar(
      {Key? key,
      required this.team1,
      required this.team2,
      required this.team1Runs,
      required this.team2Runs,
      required this.category,
      required this.team1Overs,
      required this.team2Overs,
      required this.startTime,
      required this.location,
      required this.onFieldEmp1,
      required this.onFieldEmp2,
      required this.referee,
      required this.tournament,
      required this.date})
      : super(key: key);

  final String team1;
  final String team2;
  final String team1Runs;
  final String team2Runs;
  final String category;
  final String team1Overs;
  final String team2Overs;
  final String startTime;
  final String location;
  final String onFieldEmp1;
  final String onFieldEmp2;
  final String referee;
  final String tournament;
  final String date;

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
                      '${widget.team1} vs ${widget.team2}, ${widget.category}',
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
                        widget.team1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 12,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.team1Runs,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(${widget.team1Overs})',
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
                      Text(
                        widget.team2,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 12,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            '(${widget.team2Overs})',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                          Text(
                            widget.team2Runs,
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
                            child: TabBarView(children: <Widget>[
                              InfoWidget(
                                team1: widget.team1,
                                team2: widget.team2,
                                startTime: widget.startTime,
                                location: widget.location,
                                onFieldEmp1: widget.onFieldEmp1,
                                onFieldEmp2: widget.onFieldEmp2,
                                refree: widget.referee,
                                category: widget.category,
                                date: widget.date,
                                tournament: widget.tournament,
                              ),
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
