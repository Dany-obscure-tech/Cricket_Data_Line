import 'package:flutter/material.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingEntryWIdget.dart';
import 'ScoreCardBowlingEntryWidget.dart';

class ScoreCardBowling extends StatelessWidget {
  const ScoreCardBowling({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: blackColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BOWLING',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'O',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'M',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'R',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'W',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'Eco',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
              ],
            ),
          ),
        ),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
        const ScoreCardBowlingEntryWidget(),
      ],
    );
  }
}
