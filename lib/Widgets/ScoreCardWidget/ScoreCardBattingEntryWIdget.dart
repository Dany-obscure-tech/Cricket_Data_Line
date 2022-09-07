import 'package:flutter/material.dart';

class ScoreCardBattingEntryWidget extends StatefulWidget {
  const ScoreCardBattingEntryWidget({
    Key? key,
    required this.playerName,
    required this.runs,
    required this.ballsFaced,
    required this.fours,
    required this.sixes,
    required this.isOut,
    required this.isPlaying,
  }) : super(key: key);

  final String playerName;
  final String runs;
  final String ballsFaced;
  final String fours;
  final String sixes;
  final bool isOut;
  final bool isPlaying;

  @override
  State<ScoreCardBattingEntryWidget> createState() =>
      _ScoreCardBattingEntryWidgetState();
}

class _ScoreCardBattingEntryWidgetState
    extends State<ScoreCardBattingEntryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget.playerName}${widget.isOut == false ? '*' : ''}',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.runs,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.ballsFaced,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.fours,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.sixes,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                (double.parse(widget.runs) *
                        100 /
                        double.parse(widget.ballsFaced))
                    .toStringAsFixed(1),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Batting',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 8),
              ),
            ],
          )
        ],
      ),
    );
  }
}
