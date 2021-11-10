import 'package:flutter/material.dart';


class BelajarStack extends StatelessWidget {
  const BelajarStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 50,
          height: 100,
          color: Colors.green,
        ),

        Container(
          width: 100,
          height: 200,
          color: Colors.redAccent,
        ),

        Container(
          width: 150,
          height: 100,
          color: Colors.deepPurpleAccent,
        )
      ],
    );
  }
}
