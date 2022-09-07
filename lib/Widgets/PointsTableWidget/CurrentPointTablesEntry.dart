import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class CurrentPointTablesEntry extends StatefulWidget {
  const CurrentPointTablesEntry(
      {Key? key,
      required this.name,
      required this.matchPlayed,
      required this.matchWin,
      required this.matchLost,
      required this.noResult,
      required this.serialNo})
      : super(key: key);

  final String name;
  final String matchPlayed;
  final String matchWin;
  final String matchLost;
  final String noResult;
  final String serialNo;

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
                    widget.serialNo,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.matchPlayed,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 10,
                        color: greyColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.matchWin,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 10,
                        color: greyColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.matchLost,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 10,
                        color: greyColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.noResult,
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
