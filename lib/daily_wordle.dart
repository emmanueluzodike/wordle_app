import 'package:flutter/material.dart';

class DailyWordle extends StatefulWidget {
  const DailyWordle({Key? key}) : super(key: key);

  @override
  State<DailyWordle> createState() => _DailyWordleState();
}

class _DailyWordleState extends State<DailyWordle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.yellow,
              child: GridView.builder(
                  itemCount: 30,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    crossAxisCount: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.red,
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
