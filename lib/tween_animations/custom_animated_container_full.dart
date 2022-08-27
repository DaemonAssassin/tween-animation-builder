import 'package:flutter/material.dart';

import '../utils/helper_widgets.dart';

class CustomAnimatedContainerFull extends StatefulWidget {
  const CustomAnimatedContainerFull({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedContainerFull> createState() =>
      CustomAnimatedContainerFullState();
}

class CustomAnimatedContainerFullState
    extends State<CustomAnimatedContainerFull> {
  double _size = 100.0;
  double _padding = 100.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: _size),
              duration: const Duration(seconds: 3),
              curve: Curves.fastLinearToSlowEaseIn,
              builder: (_, size, __) {
                return _buildContainer(width: size, height: size);
              },
            ),
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
        _padding = 10.0;
      } else {
        _size = 100.0;
        _padding = 100.0;
      }
    });
  }

  Widget _buildContainer({required double width, required double height}) {
    return Container(
      color: Colors.red,
      width: width,
      height: height,
      alignment: Alignment.center,
      padding: EdgeInsets.all(_padding),
      child: const Text('Hello',
          style: TextStyle(color: Colors.white, fontSize: 18.0)),
    );
  }
}
