// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class OverWidgetEntry extends StatefulWidget {
  const OverWidgetEntry({
    Key? key,
    required this.overNo,
    required this.bowlerName,
    required this.fullOverData,
  }) : super(key: key);

  final String overNo;
  final String bowlerName;
  final List fullOverData;

  @override
  State<OverWidgetEntry> createState() => _OverWidgetEntryState();
}

class _OverWidgetEntryState extends State<OverWidgetEntry> {
  @override
  Widget build(BuildContext context) {
    print(widget.fullOverData[0]);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.overNo != null ? 'Ov ${widget.overNo}' : "",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          child: VerticalDivider(
            color: greyColor[300],
            thickness: 2,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      widget.bowlerName,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                ],
              ),
              widget.fullOverData[0] != ""
                  ? Container(
                      width: MediaQuery.of(context).size.width * .6,
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.fullOverData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BallEntry(
                            entry: widget.fullOverData[index].toString(),
                            color: widget.fullOverData[index].toString() ==
                                        '6' ||
                                    widget.fullOverData[index].toString() ==
                                        '4' ||
                                    widget.fullOverData[index].toString() ==
                                        'st' ||
                                    widget.fullOverData[index].toString() ==
                                        'c' ||
                                    widget.fullOverData[index].toString() ==
                                        'b' ||
                                    widget.fullOverData[index].toString() ==
                                        '0r' ||
                                    widget.fullOverData[index].toString() ==
                                        '1r' ||
                                    widget.fullOverData[index].toString() ==
                                        '2r' ||
                                    widget.fullOverData[index].toString() ==
                                        '3r' ||
                                    widget.fullOverData[index].toString() ==
                                        '4r' ||
                                    widget.fullOverData[index].toString() ==
                                        '5r' ||
                                    widget.fullOverData[index].toString() ==
                                        '6r' ||
                                    widget.fullOverData[index].toString() ==
                                        '7r'
                                ? redAccent
                                : blackColor,
                          );
                        },
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ],
    );
  }
}

class BallEntry extends StatelessWidget {
  const BallEntry({
    Key? key,
    required this.entry,
    required this.color,
  }) : super(key: key);
  final String entry;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: color)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            entry,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 12, fontWeight: FontWeight.bold, color: whiteColor),
          ),
        ),
      ),
    );
  }
}
