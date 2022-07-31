import 'package:delarosca/body/section.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
        Section(name: 'Curtains'),
      ],
    );
  }
}