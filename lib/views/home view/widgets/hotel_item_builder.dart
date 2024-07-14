import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/hotel_model.dart';
import 'package:travel_app_ui/views/home%20view/widgets/hotel_item.dart';

class HotelItemBuilder extends StatelessWidget {
  const HotelItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .28,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            return HotelItem(
              hotel: hotels[index],
            );
          },
        ),
      ),
    );
  }
}
