import 'package:delarosca/bar/bar.dart';
import 'package:delarosca/body/body.dart';
import 'package:delarosca/footer/footer.dart';
import 'package:delarosca/header/header.dart';
import 'package:flutter/material.dart';

// TODO:
// phone and email icon
// email hyperlink
// button links
// construction page for blog
// fix header photo



void main() {
  runApp(const Delarosca());
}

// TODO: Netdecor online shop
class Delarosca extends StatelessWidget {
  final String _nameOfSite = 'De La Rosca Interiors';

  const Delarosca({super.key});

  Widget spacer() {
    return Container(
      color: Colors.black87,
      height: 20,
    );
  }

  Widget website() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              spacer(),
              Bar(),
              spacer(),
              Header(),
              // spacer(),
              Body(),
              // spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _nameOfSite,
        theme: ThemeData(
          primaryColor: Colors.black87,
          // scaffoldBackgroundColor: Colors.black87,
        ),
        home: website(),
    );
  }
}
