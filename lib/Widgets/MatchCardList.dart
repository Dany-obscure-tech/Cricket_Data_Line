import 'package:flutter/material.dart';

import '../Common/Constants.dart';

class MatchCardList extends StatefulWidget {
  const MatchCardList({Key? key, required this.cards}) : super(key: key);

  final Map cards;

  @override
  State<MatchCardList> createState() => _MatchCardListState();
}

class _MatchCardListState extends State<MatchCardList> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.cards['location'] ?? 'default value',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 8,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.sports_basketball),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.cards['team1'] ?? 'default value',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.cards['team1Runs'] ?? 'default value',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: redAccent),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.sports_basketball),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.cards['team2'] ?? 'default value',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.cards['team2Runs'] ?? 'default value',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: redAccent),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      widget.cards['isLive'] ?? 'default value',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: redAccent),
                    ),
                  ),
                ],
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
