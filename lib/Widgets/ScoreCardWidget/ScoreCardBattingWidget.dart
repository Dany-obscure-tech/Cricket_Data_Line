import 'package:flutter/material.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingEntryWIdget.dart';

class ScoreCardBattingWidget extends StatelessWidget {
  const ScoreCardBattingWidget({
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
                  'BATTING',
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
                  'R',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  '4s',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  '6s',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'S/R',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
              ],
            ),
          ),
        ),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
        const ScoreCardBattingEntryWidget(),
      ],
    );
  }
}
