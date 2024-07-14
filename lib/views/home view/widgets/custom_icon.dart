import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * .07,
      decoration: const BoxDecoration(
        color: kAccentColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: kPrimaryColor,
      ),
    );
  }
}
