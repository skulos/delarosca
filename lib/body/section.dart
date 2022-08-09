import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double _sectionSpacing = 650;
const double _sizedBoxWidth = 100;
const double _padding = 100;
const double _sectionSize = 500;
const double _titleFrontSize = 36;
const double _subtitleFrontSize = 20;
const double _bodyFrontSize = 20;

class Section extends StatelessWidget {
  final bool imageFirst;
  final String image;
  final String title;
  final String subtitle;
  final String body;

  Section({
    required this.imageFirst,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.body,
  });

  Widget textTitleWidget(String text, double fontSize) {
    return SizedBox(
      width: _sectionSize,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.cinzel(
          textStyle: TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0,
            color: Colors.black,
            fontSize: fontSize,
          ),
        ),
        softWrap: true,
        maxLines: 5,
        overflow: TextOverflow.visible,
      ),
    );
  }

  Widget textSubtitleWidget(String text, double fontSize) {
    return SizedBox(
      width: _sectionSize,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            letterSpacing: 1.0,
            color: Colors.black,
            fontSize: fontSize,
          ),
        ),
        softWrap: true,
        maxLines: 5,
        overflow: TextOverflow.visible,
      ),
    );
  }

  Widget textBodyWidget(String text, double fontSize) {
    return SizedBox(
      width: _sectionSize,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.cinzel(
          textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
            color: Colors.black,
            fontSize: fontSize,
          ),
        ),
        softWrap: true,
        maxLines: 5,
        overflow: TextOverflow.visible,
      ),
    );
  }

  Widget rowWidget() {
    return imageFirst
        ? Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              // Image
              Container(
                height: _sectionSize,
                width: _sectionSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: _sizedBoxWidth),
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.vertical,
                textDirection: TextDirection.ltr,
                children: [
                  // title
                  textTitleWidget(title, _titleFrontSize),
                  // subtile
                  // const SizedBox(height: 5),
                  textSubtitleWidget(subtitle,  _subtitleFrontSize),
                  // body
                  const SizedBox(height: 25),
                  textBodyWidget(body, _bodyFrontSize),
                ],
              ),
            ],
          )
        : Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.vertical,
                textDirection: TextDirection.ltr,
                children: [
                  // title
                  textTitleWidget(title, _titleFrontSize),
                  // subtile
                  // const SizedBox(height: 5),
                  textSubtitleWidget(subtitle,  _subtitleFrontSize),
                  // body
                  const SizedBox(height: 25),
                  textBodyWidget(body, _bodyFrontSize),
                ],
              ),
              const SizedBox(width: _sizedBoxWidth),
              // Image
              Container(
                height: _sectionSize,
                width: _sectionSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _sectionSpacing,
      width: double.infinity,
      color: Colors.black87,
      child: Center(
        child: Container(
          height: _sectionSpacing,
          width: double.infinity,
          padding: EdgeInsets.all(25),
          color: Colors.white,
          child: rowWidget(),
        ),
      ),
    );
  }
}
