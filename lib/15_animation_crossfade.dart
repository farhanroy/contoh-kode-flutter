import 'package:flutter/material.dart';

class BelajarAnimationCrossFade extends StatefulWidget {
  const BelajarAnimationCrossFade({Key? key}) : super(key: key);

  @override
  State<BelajarAnimationCrossFade> createState() => _BelajarAnimationCrossFadeState();
}

class _BelajarAnimationCrossFadeState extends State<BelajarAnimationCrossFade> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });

    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        crossFadeState: _crossFadeState,
        duration: const Duration(
          seconds: 2,
        ),
        reverseDuration: const Duration(
          seconds: 3,
        ),
        firstCurve: Curves.bounceInOut,
        secondCurve: Curves.easeInBack,
        firstChild: const Icon(
          Icons.text_rotate_up,
          size: 100,
        ),
        secondChild: const Icon(
          Icons.text_rotate_vertical,
          size: 200,
        ),
        layoutBuilder: (
            Widget topChild,
            Key topChildKey,
            Widget bottomChild,
            Key bottomChildKey,
            ) {
          return Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                key: bottomChildKey,
                left: 100.0,
                top: 100.0,
                child: bottomChild,
              ),
              Positioned(
                key: topChildKey,
                child: topChild,
              ),
            ],
          );
        },
      ),
    );
  }
}
