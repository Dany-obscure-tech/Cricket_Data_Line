import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:my_cricket/main.dart';

import '../../Common/Constants.dart';
import 'FallOfWicketsWidget.dart';
import 'ScoreCardBattingWidget.dart';
import 'ScoreCardBowling.dart';
import 'ScoreCardYetToBatWidget.dart';

class NewScoreCardWidget extends StatefulWidget {
  const NewScoreCardWidget({
    Key? key,
    required this.myMap,
  }) : super(key: key);

  final Map myMap;

  @override
  State<NewScoreCardWidget> createState() => _NewScoreCardWidgetState();
}

class _NewScoreCardWidgetState extends State<NewScoreCardWidget> {
  var _tabTextIndexSelected = 0;
  var _tab2TextIndexSelected = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: const Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Scoreboard',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    FlutterToggleTab(
// width in percent
                      width: MediaQuery.of(context).size.width * .15,
                      borderRadius: 30,
                      height: 35,
                      selectedIndex: _tabTextIndexSelected,
                      selectedBackgroundColors: [
                        Colors.blue,
                        Colors.blueAccent
                      ],
                      selectedTextStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                              color: whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),

                      unSelectedTextStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                              color: blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),

                      labels: [
                        (widget.myMap['Inning1'] != null
                            ? widget.myMap['Inning1']['battingTeam']
                                .toString()
                                .substring(0, 5)
                            : widget.myMap['team1Name']
                                .toString()
                                .substring(0, 5)),
                        (widget.myMap['Inning2'] != null
                            ? widget.myMap['Inning2']['battingTeam']
                                .toString()
                                .substring(0, 5)
                            : widget.myMap['team2Name']
                                .toString()
                                .substring(0, 5))
                      ],
                      selectedLabelIndex: (index) {
                        setState(() {
                          _tabTextIndexSelected = index;
                        });
                      },
                      isScroll: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                _tabTextIndexSelected == 0
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                            image: AssetImage(
                                                'assets/images/pak.png'))),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  '${widget.myMap['Inning1'] != null ? widget.myMap['Inning1']['battingTeam'].toString() : widget.myMap['team1Name']}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "${widget.myMap['Inning1'] != null ? widget.myMap['Inning1']['battingTeam'].toString() : widget.myMap['team1Name']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  widget.myMap['Inning1'] != null
                                      ? "${widget.myMap['Inning1']['totalRuns'].toString()}-${widget.myMap['Inning1']['wicketsDown'].toString()}"
                                      : '0-0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "(${widget.myMap['Inning1'] != null ? (widget.myMap['Inning1']['currentOverNo'] == 0 ? "0.${widget.myMap['Inning1']['ballOfTheOver']}" : "${widget.myMap['Inning1']['currentOverNo'] - 1}.${widget.myMap['Inning1']['ballOfTheOver']}") : "0.0"})",
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
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                            image: AssetImage(
                                                'assets/images/pak.png'))),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "${widget.myMap['Inning2'] != null ? widget.myMap['Inning2']['battingTeam'].toString() : widget.myMap['team2Name']}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "${widget.myMap['Inning2'] != null ? widget.myMap['Inning2']['battingTeam'].toString() : widget.myMap['team2Name']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  widget.myMap['Inning2'] != null
                                      ? "${widget.myMap['Inning2']['totalRuns'].toString()}-${widget.myMap['Inning2']['wicketsDown'].toString()}"
                                      : '0-0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "(${widget.myMap['Inning2'] != null ? (widget.myMap['Inning2']['currentOverNo'] == 0 ? "0.${widget.myMap['Inning2']['ballOfTheOver']}" : "${widget.myMap['Inning2']['currentOverNo'] - 1}.${widget.myMap['Inning2']['ballOfTheOver']}") : "0.0"})",
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
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '${widget.myMap['winningMsg']}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                _tabTextIndexSelected == 0
                    ? ScoreCardBattingWidget(
                        teamPlayers: widget.myMap['1InningBattingData'],
                      )
                    : ScoreCardBattingWidget(
                        teamPlayers: widget.myMap['2InningBattingData'],
                      ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterToggleTab(
// width in percent
                      width: MediaQuery.of(context).size.width * .15,
                      borderRadius: 30,
                      height: 35,
                      selectedIndex: _tab2TextIndexSelected,
                      selectedBackgroundColors: const [
                        Colors.blue,
                        Colors.blueAccent
                      ],
                      selectedTextStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                              color: whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),

                      unSelectedTextStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                              color: blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),

                      labels: [
                        (widget.myMap['Inning1'] != null
                            ? widget.myMap['Inning1']['battingTeam']
                                .toString()
                                .substring(0, 5)
                            : widget.myMap['team1Name']
                                .toString()
                                .substring(0, 5)),
                        (widget.myMap['Inning2'] != null
                            ? widget.myMap['Inning2']['battingTeam']
                                .toString()
                                .substring(0, 5)
                            : widget.myMap['team2Name']
                                .toString()
                                .substring(0, 5))
                      ],
                      selectedLabelIndex: (index) {
                        setState(() {
                          _tab2TextIndexSelected = index;
                        });
                      },
                      isScroll: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                _tab2TextIndexSelected == 0
                    ? ScoreCardBowling(
                        teamBowlers: widget.myMap['2InningBowlingData'],
                      )
                    : ScoreCardBowling(
                        teamBowlers: widget.myMap['1InningBowlingData'],
                      ),
                _tabTextIndexSelected == 0
                    ? ScoreCardYetToBatWidget(
                        myMap: widget.myMap['1InningBattingData'])
                    : ScoreCardYetToBatWidget(
                        myMap: widget.myMap['2InningBattingData']),
                const FallOfWicketsWidget()
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
