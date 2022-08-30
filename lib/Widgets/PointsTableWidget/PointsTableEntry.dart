import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class PointsTableEntry extends StatefulWidget {
  const PointsTableEntry({Key? key}) : super(key: key);

  @override
  State<PointsTableEntry> createState() => _PointsTableEntryState();
}

class _PointsTableEntryState extends State<PointsTableEntry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '1',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  'KHT',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '1',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '1',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '0.639',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
