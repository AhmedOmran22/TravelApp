import 'package:flutter/material.dart';

import '../../../constants.dart';

class DestinatiosCarousel extends StatelessWidget {
  const DestinatiosCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            'Top Destinations ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Spacer(),
          Text(
            'See All ',
            style: TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
