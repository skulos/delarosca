import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

const double _sectionSpacing = 650;
const double _sizedBoxWidth = 100;
const double _sizedBoxHeight = 20;
const double _padding = 100;
const double _sectionSize = 500;
const double _titleFrontSize = 36;
const double _subtitleFrontSize = 20;
const double _bodyFrontSize = 20;

const double defaultValue = 50.0;
const double rerenderValue = 150.0;

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

Widget spacer(BuildContext context) {
  return Container(
    color: Colors.white,
    child: SizedBox(
      height: ResponsiveValue(
        context,
        defaultValue: defaultValue,
        valueWhen: [
          Condition.smallerThan(
            name: 'HEADER',
            value: defaultValue,
          ),
          Condition.largerThan(
            name: 'HEADER',
            value: rerenderValue,
          )
        ],
      ).value,
    ),
  );
}

class TextFirstSection extends StatelessWidget {
  // final bool imageFirst;
  final String image;
  final String title;
  final String subtitle;
  final String body;

  TextFirstSection({
    // required this.imageFirst,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Center(
        child: Container(
          height: ResponsiveValue(
            context,
            defaultValue: _sectionSize, // + 250,
            valueWhen: const [
              Condition.smallerThan(
                name: 'HEADER',
                value: _sectionSize + 250,
              ),
              Condition.largerThan(
                name: 'HEADER',
                value: _sectionSize,
              )
            ],
          ).value,
          width: double.infinity,
          padding: const EdgeInsets.all(25),
          color: Colors.white,
          child: ResponsiveRowColumn(
            // Layout
            layout: ResponsiveWrapper.of(context).isSmallerThan("FOOTER")
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,

            // Axis
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

            // Children
            children: [
              ResponsiveRowColumnItem(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.vertical,
                  textDirection: TextDirection.ltr,
                  children: [
                    // title
                    textTitleWidget(title, _titleFrontSize),
                    // subtile
                    // const SizedBox(height: 5),
                    textSubtitleWidget(subtitle, _subtitleFrontSize),
                    // body
                    const SizedBox(height: 25),
                    textBodyWidget(body, _bodyFrontSize),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                // child: SizedBox(width: _sizedBoxWidth,
                child: SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: _sizedBoxHeight,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: 'HEADER',
                        value: _sizedBoxHeight,
                      ),
                      Condition.largerThan(
                        name: 'HEADER',
                        value: 0.0,
                      )
                    ],
                  ).value,
                  width: ResponsiveValue(
                    context,
                    defaultValue: _sizedBoxWidth,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: 'HEADER',
                        value: 0.0,
                      ),
                      Condition.largerThan(
                        name: 'HEADER',
                        value: _sizedBoxWidth,
                      )
                    ],
                  ).value,
                ),
              ),
              ResponsiveRowColumnItem(
                child: Container(
                  height: _sectionSize,
                  width: _sectionSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageFirstSection extends StatelessWidget {
  // final bool imageFirst;
  final String image;
  final String title;
  final String subtitle;
  final String body;

  ImageFirstSection({
    // required this.imageFirst,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Center(
        child: Container(
          height: ResponsiveValue(
            context,
            defaultValue: _sectionSize, // + 250,
            valueWhen: const [
              Condition.smallerThan(
                name: 'HEADER',
                value: _sectionSize + 250,
              ),
              Condition.largerThan(
                name: 'HEADER',
                value: _sectionSize,
              )
            ],
          ).value,
          width: double.infinity,
          padding: const EdgeInsets.all(25),
          color: Colors.white,
          child: ResponsiveRowColumn(
            // Layout
            layout: ResponsiveWrapper.of(context).isSmallerThan("FOOTER")
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,

            // Axis
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

            // Children
            children: [
              ResponsiveRowColumnItem(
                child: Container(
                  height: _sectionSize,
                  width: _sectionSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                // child: SizedBox(width: _sizedBoxWidth,
                child: SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: _sizedBoxHeight,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: 'HEADER',
                        value: _sizedBoxHeight,
                      ),
                      Condition.largerThan(
                        name: 'HEADER',
                        value: 0.0,
                      )
                    ],
                  ).value,
                  width: ResponsiveValue(
                    context,
                    defaultValue: _sizedBoxWidth,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: 'HEADER',
                        value: 0.0,
                      ),
                      Condition.largerThan(
                        name: 'HEADER',
                        value: _sizedBoxWidth,
                      )
                    ],
                  ).value,
                ),
              ),
              ResponsiveRowColumnItem(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.vertical,
                  textDirection: TextDirection.ltr,
                  children: [
                    // title
                    textTitleWidget(title, _titleFrontSize),
                    // subtile
                    // const SizedBox(height: 5),
                    textSubtitleWidget(subtitle, _subtitleFrontSize),
                    // body
                    const SizedBox(height: 25),
                    textBodyWidget(body, _bodyFrontSize),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ColumnSection extends StatelessWidget {
//   final bool imageFirst;
//   final String image;
//   final String title;
//   final String subtitle;
//   final String body;
//
//   ColumnSection({
//     required this.imageFirst,
//     required this.image,
//     required this.title,
//     required this.subtitle,
//     required this.body,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: _sectionSpacing,
//       width: double.infinity,
//       color: Colors.black87,
//       child: Center(
//         child: Container(
//           height: _sectionSpacing,
//           width: double.infinity,
//           padding: EdgeInsets.all(25),
//           color: Colors.white,
//           // child: Wrap(
//           // direction: Axis.vertical,
//           // crossAxisAlignment: WrapCrossAlignment.center,
//           // alignment: WrapAlignment.center,
//           // runAlignment: WrapAlignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Wrap(
//                 alignment: WrapAlignment.center,
//                 direction: Axis.vertical,
//                 textDirection: TextDirection.ltr,
//                 children: [
//                   // title
//                   textTitleWidget(title, _titleFrontSize),
//                   // subtile
//                   // const SizedBox(height: 5),
//                   textSubtitleWidget(subtitle, _subtitleFrontSize),
//                   // body
//                   const SizedBox(height: 25),
//                   textBodyWidget(body, _bodyFrontSize),
//                 ],
//               ),
//               const SizedBox(width: _sizedBoxWidth),
//               // Image
//               Container(
//                 height: _sectionSize,
//                 width: _sectionSize,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class RowSection extends StatelessWidget {
//   final bool imageFirst;
//   final String image;
//   final String title;
//   final String subtitle;
//   final String body;
//
//   RowSection({
//     required this.imageFirst,
//     required this.image,
//     required this.title,
//     required this.subtitle,
//     required this.body,
//   });
//
//   Widget rowWidget() {
//     return imageFirst
//         ? Wrap(
//             direction: Axis.horizontal,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             alignment: WrapAlignment.center,
//             runAlignment: WrapAlignment.center,
//             children: [
//               // Image
//               Container(
//                 height: _sectionSize,
//                 width: _sectionSize,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: _sizedBoxWidth),
//               Wrap(
//                 alignment: WrapAlignment.center,
//                 direction: Axis.vertical,
//                 textDirection: TextDirection.ltr,
//                 children: [
//                   // title
//                   textTitleWidget(title, _titleFrontSize),
//                   // subtile
//                   // const SizedBox(height: 5),
//                   textSubtitleWidget(subtitle, _subtitleFrontSize),
//                   // body
//                   const SizedBox(height: 25),
//                   textBodyWidget(body, _bodyFrontSize),
//                 ],
//               ),
//             ],
//           )
//         : Wrap(
//             direction: Axis.horizontal,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             alignment: WrapAlignment.center,
//             runAlignment: WrapAlignment.center,
//             children: [
//               Wrap(
//                 alignment: WrapAlignment.center,
//                 direction: Axis.vertical,
//                 textDirection: TextDirection.ltr,
//                 children: [
//                   // title
//                   textTitleWidget(title, _titleFrontSize),
//                   // subtile
//                   // const SizedBox(height: 5),
//                   textSubtitleWidget(subtitle, _subtitleFrontSize),
//                   // body
//                   const SizedBox(height: 25),
//                   textBodyWidget(body, _bodyFrontSize),
//                 ],
//               ),
//               const SizedBox(width: _sizedBoxWidth),
//               // Image
//               Container(
//                 height: _sectionSize,
//                 width: _sectionSize,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ],
//           );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: _sectionSpacing,
//       width: double.infinity,
//       color: Colors.black87,
//       child: Center(
//         child: Container(
//           height: _sectionSpacing,
//           width: double.infinity,
//           padding: EdgeInsets.all(25),
//           color: Colors.white,
//           child: rowWidget(),
//         ),
//       ),
//     );
//   }
// }
