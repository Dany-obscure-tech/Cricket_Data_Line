import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:my_cricket/Common/Constants.dart';

import 'OverWidgetEntry.dart';

class OversWidget extends StatefulWidget {
  const OversWidget(
      {Key? key, required this.inning1Overs, required this.inning2Overs})
      : super(key: key);
  final Map inning1Overs;
  final Map inning2Overs;

  @override
  State<OversWidget> createState() => _OversWidgetState();
}

class _OversWidgetState extends State<OversWidget> {
  var _tabTextIndexSelected = 0;
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
                  1.0, // Move to right 10  horizontally
                  1.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterToggleTab(
// width in percent
                        width: MediaQuery.of(context).size.width * .1,
                        borderRadius: 30,
                        height: 35,
                        selectedIndex: _tabTextIndexSelected,
                        selectedBackgroundColors: [
                          Colors.blue,
                          Colors.blueAccent
                        ],
                        selectedTextStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),

                        unSelectedTextStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),

                        labels: ['PAK', 'HK'],
                        selectedLabelIndex: (index) {
                          setState(() {
                            _tabTextIndexSelected = index;
                          });
                        },
                        isScroll: false,
                      ),
                    ],
                  ),
                  _tabTextIndexSelected == 0
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.inning1Overs.length,
                          itemBuilder: (BuildContext context, int index) {
                            String key =
                                widget.inning1Overs.keys.elementAt(index);

                            return Column(
                              children: <Widget>[
                                OverWidgetEntry(
                                  bowlerName:
                                      "${widget.inning1Overs[key]['bowlerName']}",
                                  overNo:
                                      "${widget.inning1Overs[key]['overNo']}",
                                  fullOverData: widget.inning1Overs[key]
                                      ['fullOverData'],
                                ),
                              ],
                            );
                          },
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.inning2Overs.length,
                          itemBuilder: (BuildContext context, int index) {
                            String key =
                                widget.inning2Overs.keys.elementAt(index);

                            return Column(
                              children: <Widget>[
                                OverWidgetEntry(
                                  bowlerName:
                                      "${widget.inning2Overs[key]['bowlerName']}",
                                  overNo:
                                      "${widget.inning2Overs[key]['overNo']}",
                                  fullOverData: widget.inning2Overs[key]
                                      ['fullOverData'],
                                ),
                              ],
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
