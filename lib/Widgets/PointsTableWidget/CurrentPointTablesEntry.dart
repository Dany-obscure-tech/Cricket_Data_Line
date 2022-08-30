import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class CurrentPointTablesEntry extends StatefulWidget {
  const CurrentPointTablesEntry({Key? key}) : super(key: key);

  @override
  State<CurrentPointTablesEntry> createState() =>
      _CurrentPointTablesEntryState();
}

class _CurrentPointTablesEntryState extends State<CurrentPointTablesEntry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: greyColor[200]),
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
      ),
    );
  }
}
