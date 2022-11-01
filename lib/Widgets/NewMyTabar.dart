import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Common/Constants.dart';

import 'InfoWidget/NewInfoWidget.dart';
import 'OversWidget/NewOversWidget.dart';
import 'ScoreCardWidget/NewScoreCardWidget.dart';

class NewMyTabBar extends StatefulWidget {
  const NewMyTabBar({
    Key? key,
    required this.matchId,
  }) : super(key: key);

  final String matchId;

  @override
  State<NewMyTabBar> createState() => _TabBarState();
}

class _TabBarState extends State<NewMyTabBar> {
  bool imageCheck1 = false;
  bool imageCheck2 = false;
  bool flag = true;
  Map myMap = {};
  Future<void> getData() async {
    final ref = FirebaseDatabase.instance.ref();
    ref.child('matches/${widget.matchId}').onValue.listen((event) {
      imageCheck1 = false;
      imageCheck2 = false;
      myMap = {};
      if (event.snapshot.exists) {
        myMap = event.snapshot.value as Map;
        setState(() {});
      } else {
        print('No data available.');
        setState(() {});
      }
      imageCheck1 =
          "${myMap['Inning1'] != null ? myMap['Inning1']['battingTeam'].toString() : myMap['team1Name']}" ==
              myMap['team1Name'];
      imageCheck2 =
          "${myMap['Inning2'] != null ? myMap['Inning2']['battingTeam'].toString() : myMap['team2Name']}" ==
              myMap['team2Name'];
    });
  }

  void setFlag() async {
    Timer(const Duration(milliseconds: 500), () {
      flag = false;
      setState(() {});
    });
  }

  @override
  void initState() {
    getData();
    setFlag();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: flag
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                        '${myMap['Inning1'] != null ? myMap['Inning1']['battingTeam'].toString() : myMap['team1Name']} vs ${myMap['Inning2'] != null ? myMap['Inning2']['battingTeam'].toString() : myMap['team2Name']}',
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
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: imageCheck1
                                    ? myMap['team1ImageUrl'] != ""
                                        ? NetworkImage(myMap['team1ImageUrl'])
                                        : const AssetImage(
                                                'assets/images/pak.png')
                                            as ImageProvider
                                    : myMap['team2ImageUrl'] != ""
                                        ? NetworkImage(myMap['team2ImageUrl'])
                                        : const AssetImage(
                                                'assets/images/pak.png')
                                            as ImageProvider),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${myMap['Inning1'] != null ? myMap['Inning1']['battingTeam'].toString() : myMap['team1Name']}",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                  ),
                        ),
                        Row(
                          children: [
                            Text(
                              myMap['Inning1'] != null
                                  ? "${myMap['Inning1']['totalRuns'].toString()}-${myMap['Inning1']['wicketsDown'].toString()}"
                                  : '0-0',
                              // widget.team1Runs,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "(${myMap['Inning1'] != null ? (myMap['Inning1']['currentOverNo'] == 0 ? "0.${myMap['Inning1']['ballOfTheOver']}" : "${myMap['Inning1']['currentOverNo'] - 1}.${myMap['Inning1']['ballOfTheOver']}") : "0.0"})",
                              // '(${widget.team1Overs})',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
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
                          "${myMap['Inning2'] != null ? myMap['Inning2']['battingTeam'].toString() : myMap['team2Name']}",
                          // widget.team2,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                  ),
                        ),
                        Row(
                          children: [
                            Text(
                              "(${myMap['Inning2'] != null ? (myMap['Inning2']['currentOverNo'] == 0 ? "0.${myMap['Inning2']['ballOfTheOver']}" : "${myMap['Inning2']['currentOverNo'] - 1}.${myMap['Inning2']['ballOfTheOver']}") : "0.0"})",
                              // '(${widget.team2Overs})',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              myMap['Inning2'] != null
                                  ? "${myMap['Inning2']['wicketsDown'].toString()}-${myMap['Inning2']['totalRuns'].toString()}"
                                  : '0-0',
                              // widget.team2Runs,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: imageCheck2
                                      ? myMap['team2ImageUrl'] != ""
                                          ? NetworkImage(myMap['team2ImageUrl'])
                                          : const AssetImage(
                                                  'assets/images/pak.png')
                                              as ImageProvider
                                      : myMap['team1ImageUrl'] != ""
                                          ? NetworkImage(myMap['team1ImageUrl'])
                                          : const AssetImage(
                                                  'assets/images/pak.png')
                                              as ImageProvider)),
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
                                NewInfoWidget(
                                  myMap: myMap,
                                  team1ImageUrl: imageCheck1
                                      ? myMap['team1ImageUrl']
                                      : myMap['team2ImageUrl'],
                                  team2ImageUrl: imageCheck2
                                      ? myMap['team2ImageUrl']
                                      : myMap['team1ImageUrl'],
                                ),
                                !myMap['isScheduled']
                                    ? NewScoreCardWidget(
                                        myMap: myMap,
                                      )
                                    : Container(),

                                !myMap['isScheduled']
                                    ? NewOversWidget(
                                        myMap: myMap,
                                      )
                                    : Container(),
                                Container(),

                                // const PointsTableWidget(),
                              ]))
                        ])),
              ]),
      ),
    );
  }
}
