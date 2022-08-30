import 'package:flutter/material.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/Widgets/MatchCard.dart';

class Local extends StatefulWidget {
  const Local({Key? key}) : super(key: key);

  @override
  State<Local> createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Today\'s Matches',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: whiteColor),
                ),
              ],
            ),
          ),
          const MatchCard(),
          const MatchCard(),
          const MatchCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Matches',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                ),
              ],
            ),
          ),
          const MatchCard(),
          const MatchCard(),
        ],
      ),
    );
  }
}
