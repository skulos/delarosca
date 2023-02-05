import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class Bar extends StatelessWidget {
  // TODO: add text logo
  static voidFunction() {}

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

  Widget barIcons(String widgetText, IconData icon,
      {VoidCallback onPress = voidFunction}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24),
          ),
          onPressed: onPress,
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.black54,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(icon, color: Colors.black),
          ),
        ),
        textWidget(widgetText.toUpperCase()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double spacingWidth = screenWidth / 15;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: spacingWidth),
      color: Colors.black87,
      // height: 150,
      width: screenWidth,
      child: ResponsiveRowColumn(
        // Layout
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,

        // Row and Column Axis
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisAlignment: MainAxisAlignment.center,
        columnCrossAxisAlignment: CrossAxisAlignment.center,

        children: [
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              // Layout
              layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,

              // Row and Column Axis
              // rowMainAxisAlignment: MainAxisAlignment.center,
              // rowCrossAxisAlignment: CrossAxisAlignment.center,
              // columnMainAxisAlignment: MainAxisAlignment.center,
              // columnCrossAxisAlignment: CrossAxisAlignment.center,

              // Children
              children: [
                ResponsiveRowColumnItem(
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(100),
                  //   child: const Image(
                  //     image: AssetImage('assets/logo.jpg'),
                  //   ),
                  // ),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(50),
                      child: Image.asset('assets/logo.jpg'),
                    ),
                  ),
                ),
                const ResponsiveRowColumnItem(child: SizedBox(width: 20)),
                ResponsiveRowColumnItem(
                    child: textWidget('De La Rosca Interiors', fontSize: 30)),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Blog
                barIcons('BLOG', Icons.book_outlined),

                const SizedBox(width: 20),

                // Shopping Chart
                barIcons('SHOP', Icons.shopping_bag_outlined,
                    onPress: () => _launchUrl(_facebookURL)),
              ],
            ),
          ),
        ],
      ),
      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     // Logo and name
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         ClipRRect(
      //           borderRadius: BorderRadius.circular(100),
      //           child: const Image(
      //             image: AssetImage('assets/logo.jpg'),
      //           ),
      //         ),
      //         const SizedBox(width: 20),
      //         textWidget('De La Rosca Interiors', fontSize: 30),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         // Blog
      //         barIcons('BLOG', Icons.book_outlined),
      //
      //         const SizedBox(width: 20),
      //
      //         // Shopping Chart
      //         barIcons('SHOP', Icons.shopping_bag_outlined, onPress: () => _launchUrl(_facebookURL)),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

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
//       onPressed: () => _launchUrl(_facebookURL),
//       child: Container(
//         decoration: BoxDecoration(
//           // color: Colors.black54,
//           borderRadius: BorderRadius.circular(100),
//         ),
//         child: const Icon(Icons.shopping_bag_outlined,
//             color: Colors.black),
//       ),
//     ),
//     textWidget('SHOP'),
//     // Text(
//     //   'SHOP',
//     //   textAlign: TextAlign.center,
//     //   style: GoogleFonts.cinzel(
//     //     textStyle: TextStyle(
//     //       letterSpacing: 1.0,
//     //       color: Colors.grey.shade100,
//     //       fontSize: 18,
//     //     ),
//     //   ),
//     // ),
//   ],
// ),
