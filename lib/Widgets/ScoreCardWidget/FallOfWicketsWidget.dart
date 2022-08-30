import 'package:flutter/material.dart';
import 'package:my_cricket/Widgets/ScoreCardWidget/FallOfWicketsEntryWidget.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingEntryWIdget.dart';

class FallOfWicketsWidget extends StatelessWidget {
  const FallOfWicketsWidget({
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
                  'FALL OF WICKETS',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'SCORE',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Text(
                  'OVER',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
              ],
            ),
          ),
        ),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
        const FallOfWicketsEntryWidget(),
      ],
    );
  }
}
