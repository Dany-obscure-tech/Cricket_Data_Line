import 'package:flutter/material.dart';

import '../../Common/Constants.dart';
import 'ScoreCardBattingEntryWIdget.dart';

class ScoreCardBattingWidget extends StatefulWidget {
  const ScoreCardBattingWidget({
    Key? key,
    required this.teamPlayers,
  }) : super(key: key);
  final Map teamPlayers;

  @override
  State<ScoreCardBattingWidget> createState() => _ScoreCardBattingWidgetState();
}

class _ScoreCardBattingWidgetState extends State<ScoreCardBattingWidget> {
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
                  'B',
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
        Container(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.teamPlayers.length,
            itemBuilder: (BuildContext context, int index) {
              String key = widget.teamPlayers.keys.elementAt(index);

              return Column(
                children: <Widget>[
                  ScoreCardBattingEntryWidget(
                    playerName: "${widget.teamPlayers[key]['name']}",
                    runs: "${widget.teamPlayers[key]['runs']}",
                    ballsFaced: "${widget.teamPlayers[key]['ballsFaced']}",
                    fours: "${widget.teamPlayers[key]['fours']}",
                    sixes: "${widget.teamPlayers[key]['sixes']}",
                    isOut: "${widget.teamPlayers[key]['isOut']}" == 'true',
                    isPlaying:
                        "${widget.teamPlayers[key]['isPlaying']}" == 'true',
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
