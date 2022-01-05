import 'package:flutter/material.dart';

class ColorState extends InheritedWidget {

  final Color color;

  const ColorState({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  static ColorState of(BuildContext context) {
    final ColorState? result = context.dependOnInheritedWidgetOfExactType<ColorState>();
    assert(result != null, 'No ColorState found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ColorState old) => color != old.color;
}

class BelajarInheritedWidget extends StatelessWidget {
  const BelajarInheritedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorState(
        color: Colors.red,
        child: Column(
          children: [
            _Widget1(),
            const SizedBox(height: 8),
            _Widget2(),
          ],
        ),
      ),
    );
  }
}

class _Widget1 extends StatelessWidget {
  const _Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hai Dunia',
      style: TextStyle(color: ColorState.of(context).color),
    );
  }
}

class _Widget2 extends StatelessWidget {
  const _Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 100,
        color: ColorState.of(context).color
    );
  }
}

