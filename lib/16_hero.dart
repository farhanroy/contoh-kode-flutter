import 'package:flutter/material.dart';

class BelajarHero extends StatelessWidget {
  const BelajarHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _HeroPage1();
  }
}

class _HeroPage1 extends StatelessWidget {
  const _HeroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(seconds: 1),
                  pageBuilder: (_, __, ___) => _HeroPage2(),
                ));
          },
          child: Hero(
            tag: 'image1',
            child: Image.network(
              "https://picsum.photos/250?image=9",
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroPage2 extends StatelessWidget {
  const _HeroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Hero(
        tag: 'image1',
        child: Center(
          child: Image.network(
            "https://picsum.photos/250?image=9",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
