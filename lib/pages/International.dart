import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Common/Constants.dart';
import '../Widgets/MatchCard.dart';
import '../Widgets/MyTabBar.dart';

class International extends StatefulWidget {
  const International({Key? key}) : super(key: key);

  @override
  State<International> createState() => _InternationalState();
}

class _InternationalState extends State<International> {
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
          GestureDetector(
              onTap: () {
                Get.to(() => const MyTabBar());
              },
              child: const MatchCard()),
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
