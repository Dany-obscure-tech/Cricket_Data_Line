import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealTimeCrud extends StatefulWidget {
  const RealTimeCrud({Key? key}) : super(key: key);

  @override
  State<RealTimeCrud> createState() => _RealTimeCrudState();
}

class _RealTimeCrudState extends State<RealTimeCrud> {
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref("allMatches");

  late Future data;
  void _pushData() async {
    String? newkey = ref.push().key;

    await ref.child(newkey!).set({
      'date': '02=09-2022',
      'location': 'Peshawar',
      'team1': 'IND',
      'team2': 'SA',
      'team1Runs': '292-5',
      'team2Runs': '192-9',
      'isLive': 'false',
    });
  }

  Future<void> pushData() async {
    await ref.set({
      "name": "John",
      "age": 18,
      "address": {"line1": "100 Mountain View"}
    });
  }

  Future getData() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('allMatches').get();
    if (snapshot.exists) {
      print(snapshot.value);
      return snapshot.value;
    } else {
      print('No data available.');
    }
  }

  Future<void> trackData() async {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('users/123');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print(data);
    });
  }

  Future<void> readOnceData() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('users/123').get();
    if (snapshot.exists) {
      print(snapshot.value);
    } else {
      print('No data available.');
    }
  }

  Future<void> readWithCallaback() async {
    FirebaseDatabase.instance.ref('users/123').set('name').then((_) {
      print("Data saved successfully!");
      // Data saved successfully!
    }).catchError((error) {
      // The write failed...
      print("The write failed");
    });
  }

  @override
  void initState() {
    data = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('pushData'),
              onPressed: _pushData,
            ),
            ElevatedButton(
              child: const Text('getData'),
              onPressed: getData,
            ),
            ElevatedButton(
              child: const Text('trackData'),
              onPressed: trackData,
            ),
            ElevatedButton(
              child: const Text('readOnceData'),
              onPressed: readOnceData,
            ),
            ElevatedButton(
              child: const Text('readWithCallaback'),
              onPressed: readWithCallaback,
            ),
            FutureBuilder(
              future: data,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
