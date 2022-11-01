import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Common/Constants.dart';
import 'SquadEntry.dart';
import 'SquadTab.dart';
import 'SquadWidget.dart';

class NewInfoWidget extends StatefulWidget {
  const NewInfoWidget({
    Key? key,
    required this.myMap,
    required this.team1ImageUrl,
    required this.team2ImageUrl,
  }) : super(key: key);

  final Map myMap;
  final String team1ImageUrl;
  final String team2ImageUrl;

  @override
  State<NewInfoWidget> createState() => _NewInfoWidgetState();
}

class _NewInfoWidgetState extends State<NewInfoWidget> {
  @override
  void initState() {
    super.initState();
  }

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
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Squads',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (ctxt) {
                                return SquadWidget(
                                  teamPlayers:
                                      widget.myMap['1InningBattingData'] ??
                                          widget.myMap['team1Players'],
                                );
                              });
                        },
                        child: SquadTab(
                          name:
                              '${widget.myMap['Inning1'] != null ? widget.myMap['Inning1']['battingTeam'].toString() : widget.myMap['team1Name']}',
                          url: widget.team1ImageUrl,
                        )),
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (ctxt) {
                                return SquadWidget(
                                  teamPlayers:
                                      widget.myMap['2InningBattingData'] ??
                                          widget.myMap['team2Players'],
                                );
                              });
                        },
                        child: SquadTab(
                          url: widget.team2ImageUrl,
                          name:
                              "${widget.myMap['Inning2'] != null ? widget.myMap['Inning2']['battingTeam'].toString() : widget.myMap['team2Name']}",
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Match Details',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  '2nd widget.category, widget.category, widget.tournament, 2021-22',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match Start Time',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  widget.myMap['timeStamp'] ?? 'default',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Stadium/Venue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  "location",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match Officials',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  'Match Official(on Field), Match Official(on Field), Match Official(referee)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
