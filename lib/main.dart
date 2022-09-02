import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:my_cricket/Common/theme.dart';
import 'package:my_cricket/pages/FetchData.dart';

import 'pages/MyHomePage.dart';
import 'pages/RealtimeCrud.dart';

Future main() async {
  await Hive.initFlutter();
  await Hive.openBox('');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MyCricket',
      debugShowCheckedModeBanner: false,
      theme: lightThemData,
      darkTheme: darkThemData, // standard dark theme
      themeMode: _themeMode,
      home: MyHomePage(),
      // home: const FetchData(),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
