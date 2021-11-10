import 'package:flutter/material.dart';

class BelajarButton extends StatelessWidget {
  const BelajarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan")
        ),

        ElevatedButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan")
        ),

        OutlinedButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan")
        ),
      ],
    );
  }
}


