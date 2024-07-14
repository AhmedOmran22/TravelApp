import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomIcon(icon: FontAwesomeIcons.plane),
        CustomIcon(icon: FontAwesomeIcons.bed),
        CustomIcon(icon: FontAwesomeIcons.personWalking),
        CustomIcon(icon: FontAwesomeIcons.personBiking),
      ],
    );
  }
}
