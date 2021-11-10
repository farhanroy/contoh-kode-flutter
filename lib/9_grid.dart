import 'package:flutter/material.dart';

class BelajarGrid extends StatelessWidget {
  const BelajarGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      children: <Widget>[
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
      ],
    );
  }
}

class _ContohGridViewCount extends StatelessWidget {
  const _ContohGridViewCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
      ],
    );
  }
}

class _ContohGridViewBuilder extends StatelessWidget {
  const _ContohGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) => FlutterLogo(),
      itemCount: 4,
    );
  }
}

class _ContohGridViewExcent extends StatelessWidget {
  const _ContohGridViewExcent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 400,
      children: <Widget>[
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
      ],
    );
  }
}

class _ContohGridViewCustom extends StatelessWidget {
  const _ContohGridViewCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      childrenDelegate: SliverChildListDelegate(
        [
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
        ],
      ),
    );
  }
}



