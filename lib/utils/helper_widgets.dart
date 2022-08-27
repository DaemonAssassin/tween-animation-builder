import 'package:flutter/material.dart';

Widget addVerticalSpace(double space) => SizedBox(height: space);

Widget buildButton({required String text, required VoidCallback onPressed}) {
  return ElevatedButton(onPressed: onPressed, child: Text(text));
}
