import 'package:flutter/material.dart';

import 'SquadEntry.dart';

class BowlSquad extends StatefulWidget {
  const BowlSquad({
    Key? key,
    required this.teamPlayers,
  }) : super(key: key);
  final Map teamPlayers;

  @override
  State<BowlSquad> createState() => _BowlSquadState();
}

class _BowlSquadState extends State<BowlSquad> {
  @override
  Widget build(BuildContext context) {
    List<Map> l = [];
    for (var value in widget.teamPlayers.values) {
      if (value['category'] == 'Bowler') {
        l.add(value);
      }
    }
    return SingleChildScrollView(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: l.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SquadEntry(
            name: "${l[index]['name']}",
            category: "${l[index]['category']}",
            isCaptain: l[index]['isCaptain'] ?? false,
            isWicketKeeper: l[index]['isWicketKeeper'] ?? false,
            imageUrl: l[index]['imageUrl'],
          );
        },
      ),
    );
  }
}
