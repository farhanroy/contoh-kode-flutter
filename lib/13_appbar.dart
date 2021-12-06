import 'package:flutter/material.dart';

class BelajarAppbar extends StatelessWidget {
  const BelajarAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ContohBrightness();
  }
}

class _ContohTitle extends StatelessWidget {
  const _ContohTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Andi Suyatno"),
            Text("online", style: TextStyle(fontSize: 14), textAlign: TextAlign.start,)
          ],
        ),
      ),
    );
  }
}

class _ContohLeading extends StatelessWidget {
  const _ContohLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Icon(Icons.arrow_back),
            CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}

class _ContohActions extends StatelessWidget {
  const _ContohActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.delete),
          Icon(Icons.edit),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

class _ContohBackground extends StatelessWidget {
  const _ContohBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ini App Bar"),
      ),
    );
  }
}

class _ContohBrightness extends StatelessWidget {
  const _ContohBrightness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Ini App Bar"),
      ),
    );
  }
}





