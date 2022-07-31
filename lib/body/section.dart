import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Section extends StatelessWidget {

  final String name;
  final RandomColor _randomColor = RandomColor();

  Section({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: _randomColor.randomColor(),
        height: 250,
        width: double.infinity,
        child: Text(name),
      ),
    );
  }
}