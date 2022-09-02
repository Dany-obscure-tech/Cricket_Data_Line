import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/Widgets/MatchCard.dart';

import '../Widgets/MatchCardList.dart';
import '../Widgets/MyTabBar.dart';

class Local extends StatefulWidget {
  const Local({Key? key}) : super(key: key);

  @override
  State<Local> createState() => _LocalState();
}

class _LocalState extends State<Local> {
  Query dbRef = FirebaseDatabase.instance.ref().child("allMatches");
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child("allMatches");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Today\'s Matches',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: whiteColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: FirebaseAnimatedList(
              query: dbRef,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                Map cards = snapshot.value as Map;
                cards['key'] = snapshot.key;

                return GestureDetector(
                    onTap: () {
                      Get.to(() => MyTabBar(
                            team1: cards['team1'] ?? 'default value',
                            team2: cards['team2'] ?? 'default value',
                            team1Runs: cards['team1Runs'] ?? 'default value',
                            team2Runs: cards['team2Runs'] ?? 'default value',
                            team1Overs: cards['team1Overs'].toString(),
                            team2Overs: cards['team2Overs'].toString(),
                            category: cards['category'] ?? 'default value',
                            startTime: cards['startTime'] ?? 'default value',
                            location: cards['location'] ?? 'default value',
                            onFieldEmp1: cards['fieldEmp1'] ?? 'default value',
                            onFieldEmp2: cards['fieldEmp2'] ?? 'default value',
                            referee: cards['referee'] ?? 'default value',
                            tournament: cards['tournament'] ?? 'default value',
                            date: cards['date'] ?? 'default value',
                          ));
                    },
                    child: MatchCardList(cards: cards));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Matches',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                ),
              ],
            ),
          ),
          const MatchCard(),
          const MatchCard(),
        ],
      ),
    );
  }
}
