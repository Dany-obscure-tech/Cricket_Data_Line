import 'package:flutter/material.dart';

import 'SquadEntry.dart';

class BatSquad extends StatelessWidget {
  const BatSquad({
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
