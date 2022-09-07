import 'package:flutter/material.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingEntryWIdget.dart';
import 'ScoreCardBowlingEntryWidget.dart';

class ScoreCardBowling extends StatefulWidget {
  const ScoreCardBowling({
    Key? key,
    required this.teamBowlers,
  }) : super(key: key);
  final Map teamBowlers;

  @override
  State<ScoreCardBowling> createState() => _ScoreCardBowlingState();
}

class _ScoreCardBowlingState extends State<ScoreCardBowling> {
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
        Container(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.teamBowlers.length,
            itemBuilder: (BuildContext context, int index) {
              String key = widget.teamBowlers.keys.elementAt(index);

              return Column(
                children: <Widget>[
                  ScoreCardBowlingEntryWidget(
                    name: "${widget.teamBowlers[key]['name']}",
                    overs: "${widget.teamBowlers[key]['overs']}",
                    runs: "${widget.teamBowlers[key]['runs']}",
                    wickets: "${widget.teamBowlers[key]['wickets']}",
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
