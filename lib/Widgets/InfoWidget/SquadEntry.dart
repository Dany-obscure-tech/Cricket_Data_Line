import 'package:flutter/material.dart';

class SquadEntry extends StatelessWidget {
  const SquadEntry({
    Key? key,
    required this.name,
    required this.category,
    required this.isCaptain,
    required this.isWicketKeeper,
  }) : super(key: key);
  final String name;
  final String category;
  final bool isCaptain;
  final bool isWicketKeeper;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 10),
            CircleAvatar(
              radius: 18, // Image radius
              backgroundImage: AssetImage(
                'assets/images/pak.png',
              ),
            ),
          ],
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              "${isWicketKeeper ? '(W)' : ''}${isCaptain ? '(C)' : ''}",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              category,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 10,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
