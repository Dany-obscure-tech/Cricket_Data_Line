import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class ScoreCardYetToBatWidget extends StatelessWidget {
  const ScoreCardYetToBatWidget({
    Key? key,
    required this.myMap,
  }) : super(key: key);
  final Map myMap;

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
              itemCount: myMap.length,
              itemBuilder: (context, index) {
                String key = myMap.keys.elementAt(index);
                return !myMap[key]['isOut'] && !myMap[key]['isBatting']
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage: myMap[key]['imageUrl'] != ""
                                  ? NetworkImage(myMap[key]['imageUrl'])
                                  : const AssetImage(
                                      'assets/images/pak.png',
                                    ) as ImageProvider,
                            ),
                            Text(
                              myMap[key]['name'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    : Container();
              }),
        ),
      ],
    );
  }
}
