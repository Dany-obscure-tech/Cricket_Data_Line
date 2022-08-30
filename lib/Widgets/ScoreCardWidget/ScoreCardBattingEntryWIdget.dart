import 'package:flutter/material.dart';

class ScoreCardBattingEntryWidget extends StatelessWidget {
  const ScoreCardBattingEntryWidget({
    Key? key,
  }) : super(key: key);

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
                'Rizwan*',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '54',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '34',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '6',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '3',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '176',
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
