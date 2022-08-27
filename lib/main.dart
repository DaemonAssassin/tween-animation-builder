import 'package:flutter/material.dart';
import 'package:tween_animation_builder/tween_animations/custom_animated_container_full.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const CustomAnimatedContainerFull(),
      ),
    );
  }
}
