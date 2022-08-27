import 'package:flutter/material.dart';

import '../utils/helper_widgets.dart';

class CustomAnimatedSize extends StatefulWidget {
  const CustomAnimatedSize({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedSize> createState() => CustomAnimatedSizeState();
}

class CustomAnimatedSizeState extends State<CustomAnimatedSize> {
  double _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: _size),
            duration: const Duration(seconds: 3),
            curve: Curves.fastLinearToSlowEaseIn,
            builder: (_, size, __) {
              return _buildContainer(width: size, height: size);
            },
          ),
          addVerticalSpace(30.0),
          buildButton(
            text: 'Change Size',
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
      if (_size == 100.0) {
        _size = 200.0;
      } else {
        _size = 100.0;
      }
    });
  }

  Widget _buildContainer({required double width, required double height}) {
    return Container(
      color: Colors.red,
      width: width,
      height: height,
    );
  }
}
