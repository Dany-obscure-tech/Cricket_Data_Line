import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/Widgets/MatchCard.dart';

import '../Widgets/MatchCardList.dart';
import '../Widgets/NewMatchCardList.dart';
import '../Widgets/NewMyTabar.dart';

class NewLocal extends StatefulWidget {
  const NewLocal({Key? key}) : super(key: key);

  @override
  State<NewLocal> createState() => _NewLocalState();
}

class _NewLocalState extends State<NewLocal> {
  Query dbRef = FirebaseDatabase.instance.ref().child("matches");
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child("matches");

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
                // Map team1Player = cards['team1Players'] as Map;
                // Map team2Player = cards['team2Players'] as Map;
                // Map team1Bowlers = cards['team1Bowlers'] as Map;
                // Map team2Bowlers = cards['team2Bowlers'] as Map;
                // Map inning1Overs = cards['inning1Overs'] as Map;
                // Map inning2Overs = cards['inning2Overs'] as Map;

                cards['key'] = snapshot.key;

                return GestureDetector(
                    onTap: () {
                      Get.to(NewMyTabBar(matchId: cards['matchId']));
                    },
                    child: NewMatchCardList(cards: cards));
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
