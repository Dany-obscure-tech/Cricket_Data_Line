import 'package:flutter/material.dart';
import 'package:my_cricket/Common/Constants.dart';

import 'OverWidgetEntry.dart';

class OversWidget extends StatefulWidget {
  const OversWidget({Key? key}) : super(key: key);

  @override
  State<OversWidget> createState() => _OversWidgetState();
}

class _OversWidgetState extends State<OversWidget> {
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
                children: const [
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                  OverWidgetEntry(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
