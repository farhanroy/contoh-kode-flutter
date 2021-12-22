import 'package:flutter/material.dart';

class BelajarRouting extends StatelessWidget {
  const BelajarRouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              // Jalankan navigasi
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return _Screen2();
                  })
              );
            }, 
            child: Text('Lanjut')
        ),
      ),
    );
  }
}

class _Screen2 extends StatelessWidget {
  const _Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)
        ),
      ),
    );
  }
}

