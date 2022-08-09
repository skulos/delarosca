import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String date  = DateTime.now().year.toString();
    String finalStr = '© Delarosca Interior $date.   Designed by Hendré S Hayman';

    return Center(
      child: SelectableText(
        finalStr,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey.shade100,
          fontSize: 12,
        ),
      ),
    );
  }
}
