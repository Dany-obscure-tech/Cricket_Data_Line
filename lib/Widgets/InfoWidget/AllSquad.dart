import 'package:flutter/material.dart';

import 'SquadEntry.dart';

class AllSquad extends StatefulWidget {
  const AllSquad({
    Key? key,
    required this.teamPlayers,
  }) : super(key: key);
  final Map teamPlayers;

  @override
  State<AllSquad> createState() => _AllSquadState();
}

class _AllSquadState extends State<AllSquad> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.teamPlayers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          String key = widget.teamPlayers.keys.elementAt(index);
          return SquadEntry(
            name: "${widget.teamPlayers[key]['name']}",
            category: "${widget.teamPlayers[key]['category']}",
            isCaptain: widget.teamPlayers[key]['isCaptain'],
            isWicketKeeper: widget.teamPlayers[key]['isWicketKeeper'],
          );
        },
      ),
    );
  }
}
