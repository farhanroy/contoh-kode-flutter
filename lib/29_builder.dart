import 'package:flutter/material.dart';

class BelajarBuilder extends StatelessWidget {
  const BelajarBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              child: Text('Show'),
              onPressed: () {

                Scaffold.of(context).hasAppBar;

              },
            );
          }
        ),
      ),
    );
  }
}

