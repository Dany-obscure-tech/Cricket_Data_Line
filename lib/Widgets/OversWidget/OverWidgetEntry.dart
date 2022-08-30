import 'package:flutter/material.dart';

import '../../Common/Constants.dart';

class OverWidgetEntry extends StatefulWidget {
  const OverWidgetEntry({Key? key}) : super(key: key);

  @override
  State<OverWidgetEntry> createState() => _OverWidgetEntryState();
}

class _OverWidgetEntryState extends State<OverWidgetEntry> {
  @override
  Widget build(BuildContext context) {
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
                    'Ov 1',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '16 runs',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 10,
                        ),
                  )
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
                      'Aamir',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      'to',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      'Sammy',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blackColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '0',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blackColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          '1',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blackColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          '2',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blackColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '3',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: redAccent),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          '4',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: blackColor),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          '6',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: redColor),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'w',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
