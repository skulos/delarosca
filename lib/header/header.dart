import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {

  final Uri rarchitectureURL = Uri.parse(
      'https://unsplash.com/@rarchitecture_melbourne?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText');
  final Uri unsplashURL = Uri.parse(
      'https://unsplash.com/s/photos/modern-interior?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    //return Stack(alignment: Alignment.bottomRight, children: <Widget>[
     return Row(
        children: [
          Container(
            height: 800,
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/header_background_2.jpg'),
                // image: AssetImage('assets/4.jpg'),
              ),
            ),
          ),
          Container(
            height: 800,
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/header_background.jpg'),
                // image: AssetImage('assets/4.jpg'),
              ),
            ),
          ),
        ],
      );
    //   RichText(
    //     text: TextSpan(
    //       children: [
    //         const TextSpan(text: 'Photo by '),
    //         TextSpan(
    //             text: 'R ARCHITECTURE',
    //             style: const TextStyle(color: Colors.blue),
    //             recognizer: TapGestureRecognizer()..onTap = () {
    //               _launchUrl(rarchitectureURL);
    //             }),
    //         const TextSpan(text: ' on '),
    //         TextSpan(
    //             text: ' Unsplash ',
    //             style: const TextStyle(color: Colors.blue),
    //             recognizer: TapGestureRecognizer()..onTap = () {
    //               _launchUrl(unsplashURL);
    //             }),
    //       ],
    //     ),
    //   ),
    // ]);
  }
}

// return Row(
//   children: [
//     Expanded(
//       child: Container(
//         height: 500,
//         width: double.infinity,
//         child: Image.asset('assets/header_background.jpg'),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         height: 500,
//         width: double.infinity,
//         child: Image.asset('assets/header_background.jpg'),
//       ),
//     ),
//   ],
// );
// return FittedBox(
//   // fit: BoxFit.fill,
//   child: Image.asset('assets/header_background.jpg'),
// );
// Text("Photo by <a href="https://unsplash.com/@rarchitecture_melbourne?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">R ARCHITECTURE</a> on <a href="https://unsplash.com/s/photos/modern-interior?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
// "),

// Photo by <a href="https://unsplash.com/@rarchitecture_melbourne?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">R ARCHITECTURE</a> on <a href="https://unsplash.com/s/photos/modern-interior?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
// return Container(
//   height: 800,
//   // width: double.infinity,
//   width: MediaQuery.of(context).size.width,
//   // child: Image.asset('assets/header_background.jpg'),
//   // child: SvgPicture.asset(
//   //     'assets/header_background.svg',
//   // ),
//   decoration: const BoxDecoration(
//     image: DecorationImage(
//       fit: BoxFit.fill,
//       image: AssetImage('assets/header_background.jpg'),
//     ),
//   ),
// );

// return Container(
//     width: MediaQuery.of(context).size.width,
//     decoration: BoxDecoration(
//         image: DecorationImage(
//       fit: BoxFit.fill,
//       image: AssetImage('assets/header_background.jpg'),
//     )));