import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/destination_model.dart';
import 'package:travel_app_ui/views/home%20view/widgets/destination_item.dart';

class DestinationsItemBuilder extends StatelessWidget {
  const DestinationsItemBuilder({
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
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            return DestinationsItem(
              destination: destinations[index],
            );
          },
        ),
      ),
    );
  }
}
