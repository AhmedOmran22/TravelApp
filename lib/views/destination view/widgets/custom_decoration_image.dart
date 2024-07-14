// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/destination_model.dart';

class CustomDecorationImage extends StatelessWidget {
  const CustomDecorationImage({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 24,
        top: 50,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(destination.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search,
                size: 32,
              ),
              const SizedBox(width: 24),
              const Icon(FontAwesomeIcons.sortAmountDesc),
            ],
          ),
          const Spacer(),
          Text(
            destination.city,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.locationArrow,
                color: Colors.grey,
                size: 22,
              ),
              const SizedBox(width: 4),
              Text(
                destination.country,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
              const Spacer(),
              const Icon(
                FontAwesomeIcons.locationDot,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}
