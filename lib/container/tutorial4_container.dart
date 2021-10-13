import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _ContohTransform();
  }
}

class _ContohAlignment extends StatelessWidget {
  const _ContohAlignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Text('Belajar Flutter', style: TextStyle(fontSize: 20,))
    );
  }
}

class _ContohColor extends StatelessWidget {
  const _ContohColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.purple,
        child: Text(
          'Belajar Flutter',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        )
    );
  }
}

class _ContohHeightWidth extends StatelessWidget {
  const _ContohHeightWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 200,
        alignment: Alignment.center,
        color: Colors.purple,
        child: Text(
          'Belajar Flutter',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        )
    );
  }
}

class _ContohPadding extends StatelessWidget {
  const _ContohPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left:20),
        height: 200,
        width: 200,
        alignment: Alignment.topLeft,
        color: Colors.purple,
        child: Text(
          'Belajar Flutter',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        )
    );
  }
}

class _ContohTransform extends StatelessWidget {
  const _ContohTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      transform: Matrix4.rotationZ(0.1),
      height: 200,
      width: 200,
      color: Colors.purple,
    );
  }
}





