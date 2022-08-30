import 'package:flutter/material.dart';

import 'SquadEntry.dart';

class AllSquad extends StatelessWidget {
  const AllSquad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SquadEntry(),
            SizedBox(width: 30),
            SquadEntry(),
          ],
        ),
      ]),
    );
  }
}
