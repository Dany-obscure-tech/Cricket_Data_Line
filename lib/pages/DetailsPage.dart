import 'package:flutter/material.dart';
import 'package:my_cricket/Widgets/MyTabBar.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          // child: MyTabBar(),
          ),
    );
  }
}
