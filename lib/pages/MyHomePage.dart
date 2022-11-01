import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_cricket/Common/Constants.dart';
import 'package:my_cricket/pages/International.dart';

import '../main.dart';
import 'NewLocal.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    International(),
    NewLocal()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');

    bool lightThem = box.get('light') ?? true;
    return Scaffold(
      appBar: AppBar(
        actions: [
          lightThem == false
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      MyApp.of(context).changeTheme(ThemeMode.light);
                      box.put('light', true);
                      lightThem = true;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.light_mode),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      MyApp.of(context).changeTheme(ThemeMode.dark);
                      box.put('light', false);
                      lightThem = false;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.dark_mode),
                  ),
                ),
        ],
        leading: const Icon(Icons.sports_baseball_rounded),
        title: const Text('MyCricket'),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Positioned(
            top: 2,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.5,
                        image: AssetImage('assets/images/pakistan.jpg')),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 120.0),
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label: 'International',
            backgroundColor: redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Local',
            backgroundColor: yellowColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: purpleColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
