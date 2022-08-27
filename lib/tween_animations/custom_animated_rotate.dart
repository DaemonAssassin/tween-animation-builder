import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/helper_widgets.dart';

class CustomAnimatedRotate extends StatefulWidget {
  const CustomAnimatedRotate({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedRotate> createState() => CustomAnimatedRotateState();
}

class CustomAnimatedRotateState extends State<CustomAnimatedRotate> {
  double _angle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: _angle),
            duration: const Duration(seconds: 3),
            curve: Curves.fastLinearToSlowEaseIn,
            builder: (_, angle, child) {
              return Transform.rotate(
                angle: angle,
                child: child,
              );
            },
            child: _buildContainer(),
          ),
          addVerticalSpace(30.0),
          buildButton(
            text: 'Change Opacity',
            onPressed: () {
              _change();
            },
          ),
        ],
      ),
    );
  }

  void _change() {
    setState(() {
      if (_angle == 0.0) {
        _angle = 2 * pi;
      } else {
        _angle = 0.0;
      }
    });
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.red,
      width: 300.0,
      height: 300.0,
    );
  }
}
