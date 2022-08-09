import 'package:delarosca/body/section.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: name custom furniture on section
        Section(
            imageFirst: true,
            image: reupholsterImage,
            title: reupholsterTitle,
            subtitle: reupholsterSubtitle,
            body: reupholsterBody),
        Section(
            imageFirst: false,
            image: curtainsImage,
            title: curtainsTitle,
            subtitle: curtainsSubtitle,
            body: curtainsBody),
        Section(
            imageFirst: true,
            image: blindsImage,
            title: blindsTitle,
            subtitle: blindsSubtitle,
            body: blindsBody),
        Section(
            imageFirst: false,
            image: cushionsImage,
            title: cushionsTitle,
            subtitle: cushionsSubtitle,
            body: cushionsBody),
      ],
    );
  }
}
