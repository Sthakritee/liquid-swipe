import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  final pages = [
    Container(
      color: Colors.red[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets try some liquid swipe",
                style: goldcoinGreyStyle,
              )
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.purple[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Puple rain Purple rain - Prince",
                style: goldcoinGreyStyle,
              )
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "mustardy yellow",
                style: goldcoinGreyStyle,
              )
            ],
          )
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300.00,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
