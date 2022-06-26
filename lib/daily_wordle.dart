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
          Row(
            children: [
              //this container is for the guess grid
              Container(
                padding: const EdgeInsets.all(8.0),
                //alignment: Alignment.bottomLeft,
                color: Colors.yellow,
                width: 250,
                height: 400,
                child: GridView.builder(
                    itemCount: 40,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 5.7,
                      crossAxisSpacing: 4,
                    ),
                    itemBuilder: (context, index) {
                      return Container(color: Colors.blue);
                    }),
              ),

              //this container is for the number grid
              Container(
                padding: const EdgeInsets.all(8.0),
                //alignment: Alignment.bottomLeft,
                color: Colors.red,
                width: 161,
                height: 400,

                child: GridView.builder(
                    itemCount: 24,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(color: Colors.black);
                    }),
              ),
            ],
          ),
          //keyboard
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
