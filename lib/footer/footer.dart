import 'package:delarosca/copyright/copyright.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('https://flutter.dev');
final Uri _facebookURL =
    Uri.parse('https://www.facebook.com/De-La-Rosca-Interiors-100362344702846');

// String? encodeQueryParameters(Map<String, String> params) {
//   return params.entries
//       .map((MapEntry<String, String> e) =>
//           '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
//       .join('&');
// }

// ···
final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'sanet@delaroscainterior.co.za',
  // query: encodeQueryParameters(<String, String>{
  //   'subject': 'Example Subject & Symbols are allowed!',
  // }),
  query: 'subject=Delarosca Interior Customer Query',
);

const _contactHeader = "CONTACT US";
const _addressHeader = "VISIT US";
const _tradingHeader = "TRADING HOURS";
const _followHeader = "FOLLOW US";

const _contactText = """sanet@delarosca.co.za
+27 71 470 6950""";

const _addressText = """61 Ford Street, Malmesbury,
Western Cape, 7300""";

const _tradingText = """Monday - Saturday: 08h00 - 17h00
Sunday: 08h00 - 15h00""";

class Footer extends StatelessWidget {
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

  Widget FooterSectionIcon(String header) {
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
              FlutterSocialButton(
                onTap: () {
                  _launchUrl(_facebookURL);
                },
                mini: true,
                buttonType: ButtonType.facebook,
              ),
              FlutterSocialButton(
                onTap: () {
                  _launchUrl(_emailLaunchUri);
                },
                mini: true,
                buttonType: ButtonType.email,
              ),
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
      height: 200,
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  footerSection(_contactHeader, _contactText),
                  footerSection(_addressHeader, _addressText),
                  footerSection(_tradingHeader, _tradingText),
                  FooterSectionIcon(_followHeader),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Copyright(),
        ],
      ),
    );
  }
}
