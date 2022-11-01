import 'package:flutter/material.dart';

import '../Common/Constants.dart';

class NewMatchCardList extends StatefulWidget {
  const NewMatchCardList({Key? key, required this.cards}) : super(key: key);

  final Map cards;

  @override
  State<NewMatchCardList> createState() => _NewMatchCardListState();
}

class _NewMatchCardListState extends State<NewMatchCardList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Peshawar',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 8,
                          ),
                    ),
                    widget.cards['isMatchLive'] != null
                        ? widget.cards['isMatchLive']
                            ? Text(
                                "Live",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: redAccent),
                              )
                            : Text(
                                widget.cards['timeStamp'],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: redAccent),
                              )
                        : Text(
                            'default',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: redAccent),
                          ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Icon(Icons.sports_basketball),
                        const SizedBox(width: 10),
                        Text(
                          widget.cards['Inning1'] != null
                              ? widget.cards['Inning1']['battingTeam']
                                  .toString()
                              : widget.cards['team1Name'],
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          widget.cards['Inning1'] != null
                              ? "${widget.cards['Inning1']['totalRuns'].toString()}-${widget.cards['Inning1']['wicketsDown'].toString()}"
                              : '0-0',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: redAccent),
                        ),
                        const SizedBox(width: 130)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Icon(Icons.sports_basketball),
                        const SizedBox(width: 10),
                        Text(
                          widget.cards['Inning2'] != null
                              ? widget.cards['Inning2']['battingTeam']
                                  .toString()
                              : widget.cards['team2Name'],
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          widget.cards['Inning2'] != null
                              ? "${widget.cards['Inning2']['totalRuns'].toString()}-${widget.cards['Inning2']['wicketsDown'].toString()}"
                              : '0-0',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: redAccent),
                        ),
                        const SizedBox(width: 130)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Day 1: Session 3",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: redAccent,
                              fontSize: 8,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
