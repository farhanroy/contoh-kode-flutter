import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  _ContohRow();
  }
}

class _ContohRow extends StatelessWidget {
  const _ContohRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.greenAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.purpleAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
      ],
    );
  }
}

class _ContohColumn extends StatelessWidget {
  const _ContohColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.greenAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
        Container(
          color: Colors.purpleAccent,
          child: FlutterLogo(
            size: 60.0,
          ),
        ),
      ],
    );
  }
}


