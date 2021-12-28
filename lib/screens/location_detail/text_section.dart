import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final Color myColor;

  const TextSection(
      {Key? key, this.title = "", this.myColor = Colors.blueAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Text(
        title,
        style: TextStyle(color: myColor),
      ),
    );
  }
}
