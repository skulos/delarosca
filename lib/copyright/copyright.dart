import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        '© Delarosca Interior 2022.   Designed by Hendré S Hayman',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey.shade100,
          fontSize: 12,
        ),
      ),
    );
  }
}
