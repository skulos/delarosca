import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Bar extends StatelessWidget {
  // TODO: add text logo

  final Uri _facebookURL = Uri.parse(
      'https://www.facebook.com/De-La-Rosca-Interiors-100362344702846');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Widget textWidget(String text, {double fontSize = 18}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.cinzel(
        textStyle: TextStyle(
          letterSpacing: 1.0,
          color: Colors.grey.shade100,
          fontSize: fontSize,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double spacingWidth = screenWidth / 15;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: spacingWidth),
      color: Colors.black87,
      height: 150,
      width: screenWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo and name
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  image: AssetImage('assets/logo.jpg'),
                ),
              ),
              const SizedBox(width: 20),
              textWidget('De La Rosca Interiors', fontSize: 30),
            ],
          ),
          Row(
            children: [
              // Blog
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         primary: Colors.white,
              //         shape: const CircleBorder(),
              //         padding: const EdgeInsets.all(24),
              //       ),
              //       onPressed: () => {},
              //       child: Container(
              //         decoration: BoxDecoration(
              //           // color: Colors.black54,
              //           borderRadius: BorderRadius.circular(100),
              //         ),
              //         child: const Icon(Icons.book_outlined, color: Colors.black),
              //       ),
              //     ),
              //     textWidget('BLOG'),
              //   ],
              // ),

              const SizedBox(width: 20),

              // Shopping Chart
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(24),
                    ),
                    onPressed: () => _launchUrl(_facebookURL),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.black54,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.shopping_bag_outlined,
                          color: Colors.black),
                    ),
                  ),
                  textWidget('SHOP'),
                  // Text(
                  //   'SHOP',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.cinzel(
                  //     textStyle: TextStyle(
                  //       letterSpacing: 1.0,
                  //       color: Colors.grey.shade100,
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
