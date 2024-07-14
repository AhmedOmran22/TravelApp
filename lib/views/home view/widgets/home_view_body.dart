import 'package:flutter/material.dart';

import 'package:travel_app_ui/views/home%20view/widgets/destination_item_builder.dart';
import 'package:travel_app_ui/views/home%20view/widgets/destinatios_carousel.dart';
import 'package:travel_app_ui/views/home%20view/widgets/hotel_item_builder.dart';

import 'hotel_carousel.dart';
import 'icons_row.dart';
import 'main_title.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 22),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MainTitle(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          const IconsRow(),
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          const DestinatiosCarousel(),
          SizedBox(height: MediaQuery.of(context).size.height * .050),
          const DestinationsItemBuilder(),
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          const HotelCarousel(),
          SizedBox(height: MediaQuery.of(context).size.height * .050),
          const HotelItemBuilder(),
        ],
      ),
    );
  }
}
