import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Bar extends StatelessWidget {
  final Uri _facebookURL = Uri.parse(
      'https://www.facebook.com/De-La-Rosca-Interiors-100362344702846');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Widget textWidget(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.cinzel(
        textStyle: TextStyle(
          letterSpacing: 1.0,
          color: Colors.grey.shade100,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      color: Colors.black87,
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo and name
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage('assets/logo.jpg'),
            ),
          ),
          Row(
            children: [
              // Blog
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
                    onPressed: () => {},
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.black54,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.book_outlined, color: Colors.black),
                    ),
                  ),
                  // Text(
                  //   'BLOG',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.cinzel(
                  //     textStyle: TextStyle(
                  //       color: Colors.grey.shade100,
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  // ),
                  textWidget('BLOG'),
                ],
              ),

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
