import 'package:delarosca/bar/bar.dart';
import 'package:delarosca/body/body.dart';
import 'package:delarosca/footer/footer.dart';
import 'package:delarosca/header/header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, child) => ResponsiveWrapper.builder(
        website(),
        // background: ClampingScrollWrapper.builder(context, widget!),
        // maxWidth: 1200,
        // minWidth: 480,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(580, name: MOBILE), // resize
          ResponsiveBreakpoint.resize(850, name: TABLET), // autoscale
          ResponsiveBreakpoint.resize(1120, name: "FOOTER"), // resize
          ResponsiveBreakpoint.resize(1150, name: "HEADER"),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP), // resize
          // ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      // initialRoute: "/",
    );
  }
}
