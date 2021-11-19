import 'package:flutter/material.dart';

class BelajarImage extends StatelessWidget {
  const BelajarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _ContohLocalImage()
        ],
      ),
    );
  }
}

class _ContohLocalImage extends StatelessWidget {
  const _ContohLocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("");
  }
}

