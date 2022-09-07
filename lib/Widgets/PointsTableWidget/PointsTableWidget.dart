import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:my_cricket/Common/Constants.dart';

import 'CurrentPointTablesEntry.dart';
import 'PointsTableEntry.dart';

class PointsTableWidget extends StatefulWidget {
  const PointsTableWidget({Key? key}) : super(key: key);

  @override
  State<PointsTableWidget> createState() => _PointsTableWidgetState();
}

class _PointsTableWidgetState extends State<PointsTableWidget> {
  Query dbRef = FirebaseDatabase.instance.ref().child("allTeams");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: const Offset(
                1.0, // Move to right 10  horizontally
                1.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Points Table',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Updated 2 hrs ago',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '#',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'TEAM',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'P',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'W',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'L',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'NR',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'NRR',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'PTS',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: greyColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 300,
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map cards = snapshot.value as Map;

                      cards['key'] = snapshot.key;
                      print("${cards['matchWin']}");

                      return CurrentPointTablesEntry(
                        name: "${cards['name']}",
                        matchPlayed: "${cards['matchPlayed']}",
                        matchLost: "${cards['matchLost']}",
                        matchWin: "${cards['matchWin']}",
                        noResult: "${cards['noResult']}",
                        serialNo: "${index + 1}",
                      );
                    },
                  ),
                ),
                // const PointsTableEntry(),
                // const CurrentPointTablesEntry(),
                // const PointsTableEntry(),
                // const CurrentPointTablesEntry(),
                // const PointsTableEntry(),
                // const PointsTableEntry(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
