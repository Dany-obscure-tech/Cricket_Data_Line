import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class ScoreCardYetToBatWidget extends StatelessWidget {
  const ScoreCardYetToBatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: blackColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Yet to Bat',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 30, // Image radius
                        backgroundImage: AssetImage(
                          'assets/images/pak.png',
                        ),
                      ),
                      Text(
                        'Rizwan',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
