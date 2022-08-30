import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cricket/Widgets/InfoWidget/ARSquad.dart';
import 'package:my_cricket/Widgets/InfoWidget/BatSquad.dart';
import 'package:my_cricket/Widgets/InfoWidget/BowlSquad.dart';

import '../../Common/Constants.dart';
import 'AllSquad.dart';
import 'SquadEntry.dart';

class SquadWidget extends StatelessWidget {
  const SquadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: greyColor,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Pakistan',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Icons.cancel))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Divider(
                      color: greyColor,
                    ),
                  ),
                  DefaultTabController(
                      length: 4, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const TabBar(
                              isScrollable: false,
                              labelColor: redAccent,
                              indicatorWeight: 5.0,
                              indicatorColor: redAccent,
                              unselectedLabelColor: greyColor,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Tab(text: 'All'),
                                Tab(text: 'Bat'),
                                Tab(text: 'Bowl'),
                                Tab(text: 'AR'),
                              ],
                            ),
                            // ignore: sized_box_for_whitespace
                            Container(
                                height: MediaQuery.of(context).size.height /
                                    1.7, //height of TabBarView
                                // color: whiteColor,
                                child: const TabBarView(children: <Widget>[
                                  AllSquad(),
                                  BatSquad(),
                                  BowlSquad(),
                                  ARSquad(),
                                ]))
                          ]))
                ],
              )),
        ),
      ),
    );
  }
}
