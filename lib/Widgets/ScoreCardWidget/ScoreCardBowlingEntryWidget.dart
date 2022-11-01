import 'package:flutter/material.dart';

class ScoreCardBowlingEntryWidget extends StatefulWidget {
  const ScoreCardBowlingEntryWidget({
    Key? key,
    required this.name,
    required this.overs,
    required this.runs,
    required this.wickets,
    required this.balls,
  }) : super(key: key);

  final String name;
  final String overs;
  final String runs;
  final String wickets;
  final String balls;

  @override
  State<ScoreCardBowlingEntryWidget> createState() =>
      _ScoreCardBowlingEntryWidgetState();
}

class _ScoreCardBowlingEntryWidgetState
    extends State<ScoreCardBowlingEntryWidget> {
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
                widget.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                "${widget.overs}.${widget.balls}",
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
                widget.wickets,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                (((double.parse(widget.runs) / double.parse(widget.balls)) * 6)
                            .isNaN
                        ? 0
                        : ((double.parse(widget.runs) /
                                double.parse(widget.balls)) *
                            6))
                    .toStringAsFixed(1),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
