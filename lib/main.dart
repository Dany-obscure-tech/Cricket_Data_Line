import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:my_cricket/Common/theme.dart';

import 'pages/MyHomePage.dart';

Future main() async {
  await Hive.initFlutter();
  await Hive.openBox('');
  runApp(MyApp());
}

final box = Hive.box('');
bool lightThem = box.get('light') ?? true;
ThemeMode _themeMode = lightThem == true ? ThemeMode.light : ThemeMode.dark;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MyCricket',
      debugShowCheckedModeBanner: false,
      theme: lightThemData,
      darkTheme: darkThemData, // standard dark theme
      themeMode: _themeMode,
      home: MyHomePage(),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
