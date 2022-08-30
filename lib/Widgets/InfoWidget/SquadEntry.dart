import 'package:flutter/material.dart';

class SquadEntry extends StatelessWidget {
  const SquadEntry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18, // Image radius
            backgroundImage: AssetImage(
              'assets/images/pak.png',
            ),
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rizwan',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                '(C)',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                'Batsman',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 10,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
