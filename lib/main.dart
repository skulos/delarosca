import 'package:delarosca/bar/bar.dart';
import 'package:delarosca/body/body.dart';
import 'package:delarosca/footer/footer.dart';
import 'package:delarosca/header/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Delarosca());
}

class Delarosca extends StatelessWidget {
  final String _nameOfSite = 'Delarosca Interiors';

  const Delarosca({super.key});

  Widget spacer() {
    return Container(
      color: Colors.black87,
      height: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _nameOfSite,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                spacer(),
                Bar(),
                spacer(),
                Header(),
                spacer(),
                Body(),
                spacer(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
