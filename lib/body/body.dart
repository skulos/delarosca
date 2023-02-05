import 'package:delarosca/body/section.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// REUPHOLSTERY
const String reupholsterImage = 'assets/5.jpg';
const String reupholsterTitle = 'REUPHOLSTERY';
const String reupholsterSubtitle =
    'Give that special old piece a fresh new look';
const String reupholsterBody =
    '''We reuphoster all soft furniture: couches, chairs, ottomans and head boards.''';

// CURTAINS
const String curtainsImage = 'assets/3.jpg';
const String curtainsTitle = 'CURTAINS';
const String curtainsSubtitle = 'Dress your windows with smile';
const String curtainsBody =
    '''Choose your fabric, curtain design and make that space your own.''';

// BLINDS
const String blindsImage = 'assets/2.jpg';
const String blindsTitle = 'BLINDS';
const String blindsSubtitle = 'Modernize your windows';
const String blindsBody =
    '''Bring your windows into the future with the latest in blind designs and technology.''';

// CUSHIONS
const String cushionsImage = 'assets/1.jpg';
const String cushionsTitle = 'CUSHION';
const String cushionsSubtitle = 'Latest trending designs';
const String cushionsBody =
    '''Visit our online store today and shop from our vast range of scattered cushions.''';

class Body extends StatelessWidget {
  // final double defaultValue = 50.0;
  // final double rerenderValue = 150.0;

  // Widget spacer(BuildContext context) {
  //   return Container(
  //     color: Colors.white,
  //     child: SizedBox(
  //       height: ResponsiveValue(
  //         context,
  //         defaultValue: defaultValue,
  //         valueWhen: [
  //           Condition.smallerThan(
  //             name: 'HEADER',
  //             value: defaultValue,
  //           ),
  //           Condition.largerThan(
  //             name: 'HEADER',
  //             value: rerenderValue,
  //           )
  //         ],
  //       ).value,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Children
      children: [
        // TODO: name custom furniture on section
        // spacer(context),

        ImageFirstSection(
          // imageFirst: true,
          image: reupholsterImage,
          title: reupholsterTitle,
          subtitle: reupholsterSubtitle,
          body: reupholsterBody,
        ),

        // spacer(context),

        TextFirstSection(
          // imageFirst: false,
          image: curtainsImage,
          title: curtainsTitle,
          subtitle: curtainsSubtitle,
          body: curtainsBody,
        ),

        // spacer(context),

        ImageFirstSection(
          // imageFirst: true,
          image: blindsImage,
          title: blindsTitle,
          subtitle: blindsSubtitle,
          body: blindsBody,
        ),

        // spacer(context),

        TextFirstSection(
          // imageFirst: false,
          image: cushionsImage,
          title: cushionsTitle,
          subtitle: cushionsSubtitle,
          body: cushionsBody,
        ),

        // spacer(context),
      ],
    );
  }
}

//     RowSection(
//         imageFirst: true,
//         image: reupholsterImage,
//         title: reupholsterTitle,
//         subtitle: reupholsterSubtitle,
//         body: reupholsterBody),
//     RowSection(
//         imageFirst: false,
//         image: curtainsImage,
//         title: curtainsTitle,
//         subtitle: curtainsSubtitle,
//         body: curtainsBody),
//     RowSection(
//         imageFirst: true,
//         image: blindsImage,
//         title: blindsTitle,
//         subtitle: blindsSubtitle,
//         body: blindsBody),
//     RowSection(
//         imageFirst: false,
//         image: cushionsImage,
//         title: cushionsTitle,
//         subtitle: cushionsSubtitle,
//         body: cushionsBody),
