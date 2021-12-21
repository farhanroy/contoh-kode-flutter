import 'package:flutter/material.dart';

class BelajarSnackBar extends StatelessWidget {
  const BelajarSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
        content: Text('Ini namanya Snack Bar'),
      action: SnackBarAction(
        label: 'Coba lagi',
        onPressed: (){},
      ),
    );
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Tampilkan')
        ),
      ),
    );
  }
}
