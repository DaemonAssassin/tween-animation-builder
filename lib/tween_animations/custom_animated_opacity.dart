import 'package:flutter/material.dart';

import '../utils/helper_widgets.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  const CustomAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedOpacity> createState() => CustomAnimatedOpacityState();
}

class CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: _opacity),
            duration: const Duration(seconds: 1),
            builder: (_, opacity, child) {
              return Opacity(
                opacity: opacity,
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
      if (_opacity == 0.0) {
        _opacity = 1.0;
      } else {
        _opacity = 0.0;
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
