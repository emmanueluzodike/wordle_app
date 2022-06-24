import 'package:flutter/material.dart';
import 'package:wordle_app/game_mode_menu.dart';

import 'daily_wordle.dart';
import 'multiplayer_wordle.dart';
import 'practice_wordle.dart';
//import 'package:dropdown_button2/dropdown_button2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WORDLE',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyAppPage());
  }
}

class MyAppPage extends StatefulWidget {
  MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  Widget mainWidget = const DailyWordle();
  var gameModes = ['Daily Wordle', 'Practice', 'Multiplayer'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('WORDLE'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.help_outline),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.leaderboard,
                //size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.settings),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text(gameModes[0]),
              onTap: () {
                setState(() {
                  mainWidget = const DailyWordle();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(gameModes[1]),
              onTap: () {
                setState(() {
                  mainWidget = const PracticeWordle();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(gameModes[2]),
              onTap: () {
                setState(() {
                  mainWidget = const MultiplayerWordle();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: mainWidget,
    );
  }
}
