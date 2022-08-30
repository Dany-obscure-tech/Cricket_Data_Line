import 'package:flutter/material.dart';

class FallOfWicketsEntryWidget extends StatelessWidget {
  const FallOfWicketsEntryWidget({
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
                'Rizwan',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '4-1',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                '100.0',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 9, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
