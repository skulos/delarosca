import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: SelectableText(
        'Under Construction',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey.shade100,
          fontSize: 12,
        ),
      ),
    );
  }
}