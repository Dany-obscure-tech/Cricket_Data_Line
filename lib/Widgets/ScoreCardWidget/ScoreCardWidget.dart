import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:my_cricket/Widgets/ScoreCardWidget/FallOfWicketsWidget.dart';
import 'package:my_cricket/Widgets/ScoreCardWidget/ScoreCardBowling.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingWidget.dart';
import 'ScoreCardYetToBatWidget.dart';

class ScoreCardWidget extends StatefulWidget {
  const ScoreCardWidget({
    Key? key,
    required this.team1,
    required this.team2,
    required this.team1Score,
    required this.team2Score,
    required this.team1Overs,
    required this.team2Overs,
    required this.tossWin,
    required this.decide,
    required this.team1Players,
    required this.team2Player,
    required this.team1Bowlers,
    required this.team2Bowlers,
  }) : super(key: key);

  final String team1;
  final String team2;
  final String team1Score;
  final String team2Score;
  final String team1Overs;
  final String team2Overs;
  final String tossWin;
  final String decide;

  final Map team1Players;
  final Map team2Player;
  final Map team1Bowlers;
  final Map team2Bowlers;

  // final String playerName;
  // final String runs;
  // final String ballsFaced;
  // final String fours;
  // final String sixes;
  // final bool isOut;

  @override
  State<ScoreCardWidget> createState() => _ScoreCardWidgetState();
}

class _ScoreCardWidgetState extends State<ScoreCardWidget> {
  var _tabTextIndexSelected = 0;

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
                      width: MediaQuery.of(context).size.width * .1,
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

                      labels: [widget.team1, widget.team2],
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
                                  widget.team1,
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
                                widget.team1,
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
                                  widget.team1Score,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '(${widget.team1Overs})',
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
                                  widget.team2,
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
                                widget.team2,
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
                                  widget.team2Score,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '(${widget.team2Overs})',
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
                      '${widget.tossWin} won the toss & decided to ${widget.decide}',
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
                        teamPlayers: widget.team1Players,
                      )
                    : ScoreCardBattingWidget(
                        teamPlayers: widget.team2Player,
                      ),
                _tabTextIndexSelected == 0
                    ? ScoreCardBowling(
                        teamBowlers: widget.team1Bowlers,
                      )
                    : ScoreCardBowling(
                        teamBowlers: widget.team2Bowlers,
                      ),
                const ScoreCardYetToBatWidget(),
                const FallOfWicketsWidget()
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
