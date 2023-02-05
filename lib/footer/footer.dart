import 'dart:html';

import 'package:delarosca/copyright/copyright.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _facebookURL =
    Uri.parse('https://www.facebook.com/De-La-Rosca-Interiors-100362344702846');

final Uri _instragramURL = Uri.parse('https://www.instagram.com/');

final Uri _pinterestURL = Uri.parse('https://za.pinterest.com/');

final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'sanet@delaroscainterior.co.za',
  query: 'subject=Delarosca Interior Customer Query',
);

const String _facebookIcon = 'assets/facebook.png';
const String _instagramIcon = 'assets/instagram.png';
const String _pinterestIcon = 'assets/pinterest.png';

const String _contactHeader = "CONTACT US";
const String _addressHeader = "VISIT US";
const String _tradingHeader = "TRADING HOURS";
const String _followHeader = "FOLLOW US";

const String _contactText = """sanet@delarosca.co.za
+27 71 470 6950""";

// const String _addressText = """61 Ford Street, Malmesbury,
// Western Cape, 7300""";

const String phoneNumber = " +27 71 470 6950";
const String emailAddress = " sanet@delarosca.co.za";

const String _addressText = """131 Voortrekker Rd, Malmesbury,
Western Cape, 7300""";

const String _tradingText = """Monday - Friday: 09h00 - 17h00
Saturday: 09h00 - 12h00 
Sunday: Closed""";

class Footer extends StatelessWidget {
  Widget phone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.phone, color: Colors.grey.shade100),
        _textWidget(phoneNumber)
      ],
    );
  }

  Widget email() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.email_outlined, color: Colors.grey.shade100),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: emailAddress,
                style: TextStyle(
                  color: Colors.grey.shade100,
                  fontSize: 18,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _launchUrl(_emailLaunchUri);
                  }),
          ],
        ),
      )
    ]);
  }

  Widget _footerContactUsSection() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _textWidget(_contactHeader),
          const SizedBox(height: 20),
          email(),
          phone(),
        ],
      ),
    );
  }

  Widget _textWidget(String textStr) {
    return SelectableText(
      textStr,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade100,
        fontSize: 18,
      ),
    );
  }

  Widget _iconWidget(String file, Uri link) {
    return ElevatedButton(
      onPressed: () {
        _launchUrl(link);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade600,
        elevation: 0,
        shape: const CircleBorder(),
      ),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Image(
          image: AssetImage(file),
        ),
      ),
    );
  }

  Widget _footerSectionIcon(String header) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _textWidget(header),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _iconWidget(_facebookIcon, _facebookURL),
              _iconWidget(_instagramIcon, _instragramURL),
              _iconWidget(_pinterestIcon, _pinterestURL),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Widget footerSection(String title, String text) {
    String widgetText = "$title\n\n$text";

    return Container(
      padding: const EdgeInsets.all(15),
      child: _textWidget(widgetText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      // height: 200,
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: Column(
        children: [
          // Table(
          //   children: [
          //     TableRow(
          //       children: [
          //         // footerSection(_contactHeader, _contactText),
          //         _footerContactUsSection(),
          //         footerSection(_addressHeader, _addressText),
          //         footerSection(_tradingHeader, _tradingText),
          //         _footerSectionIcon(_followHeader),
          //       ],
          //     ),
          //   ],
          // ),
          ResponsiveRowColumn(
            // Layout
            layout: ResponsiveWrapper.of(context).isSmallerThan("FOOTER")
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,

            // Axis
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

            // Children
            children: [
              ResponsiveRowColumnItem(child: _footerContactUsSection()),
              ResponsiveRowColumnItem(
                  child: footerSection(_addressHeader, _addressText)),
              ResponsiveRowColumnItem(
                  child: footerSection(_tradingHeader, _tradingText)),
              ResponsiveRowColumnItem(child: _footerSectionIcon(_followHeader)),
            ],
          ),

          const SizedBox(height: 20),
          Copyright(),
        ],
      ),
    );
  }
}
