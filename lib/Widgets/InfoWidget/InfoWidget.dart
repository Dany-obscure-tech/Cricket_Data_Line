import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Common/Constants.dart';
import 'SquadEntry.dart';
import 'SquadTab.dart';
import 'SquadWidget.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 20.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: const Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Squads',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (ctxt) {
                                return const SquadWidget();
                              });
                        },
                        child: SquadTab()),
                    SquadTab(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Match Details',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  '2nd ODI, ODI, India tour of South Africa, 2021-22',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match Start Time',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  '2:00 PM, 21 Jan, 2022',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Stadium/Venue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  'Boland Park, Paarl, South Africa',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Match Officials',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                                Text(
                                  'Adrian Holdstock(On Field), Marais Erasmus (on Field), Andy Pycroft(referee)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(color: greyColor),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
