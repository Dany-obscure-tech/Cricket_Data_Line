import 'package:flutter/material.dart';

import 'SquadEntry.dart';

class BatSquad extends StatefulWidget {
  const BatSquad({
    Key? key,
    required this.teamPlayers,
  }) : super(key: key);
  final Map teamPlayers;

  @override
  State<BatSquad> createState() => _BatSquadState();
}

class _BatSquadState extends State<BatSquad> {
  @override
  Widget build(BuildContext context) {
    List<Map> l = [];
    for (var value in widget.teamPlayers.values) {
      if (value['category'] == 'Batsman') {
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
