import 'package:delarosca/bar/bar.dart';
import 'package:delarosca/body/body.dart';
import 'package:delarosca/footer/footer.dart';
import 'package:delarosca/header/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Delarosca());
}

// TODO: Netdecor online shop
class Delarosca extends StatelessWidget {
  final String _nameOfSite = 'Delarosca Interiors';

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
        // builder: (context, child) =>
        //     ResponsiveWrapper.builder(
        //       child,
        //       maxWidth: 1200,
        //       minWidth: 480,
        //       defaultScale: false,
        //       breakpoints: [
        //         const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
        //         const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //         const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
        //       ],
        //       background: website(),
        //     ),
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
