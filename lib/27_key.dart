import 'dart:math';

import 'package:flutter/material.dart';

class BelajarKey extends StatefulWidget {
  const BelajarKey({Key? key}) : super(key: key);

  @override
  State<BelajarKey> createState() => _BelajarKeyState();
}

class _BelajarKeyState extends State<BelajarKey> {
  late List<Widget> tiles;

  @override
  void initState(){
    super.initState();
    tiles = [
      StatelessColorfulTile(key: UniqueKey(),),
      StatelessColorfulTile(key:  UniqueKey(),),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Key"),
      ) ,
      body: SafeArea(child: Row(children: tiles)),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
    );
  }

  swapTiles(){
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatelessColorfulTile extends StatelessWidget {
  const StatelessColorfulTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color myColor = UniqueColorGenerator.getColor();
    return Container(
        color: myColor, child: Padding(padding: EdgeInsets.all(70.0)));
  }
}

//this code snippet tells you how UniqueColorGenerator works
class UniqueColorGenerator {
  static List colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
  ];
  static Random random = new Random();
  static Color getColor() {
    if (colorOptions.length > 0) {
      return colorOptions.removeAt(random.nextInt(colorOptions.length));
    } else {
      return Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    }
  }
}
