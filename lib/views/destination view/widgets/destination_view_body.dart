import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/destination_model.dart';
import 'package:travel_app_ui/views/destination%20view/widgets/activities_item_builder.dart';

import 'custom_decoration_image.dart';

class DestintaionViewBody extends StatelessWidget {
  const DestintaionViewBody({
    super.key,
    required this.destination,
  });

  final Destination destination;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDecorationImage(destination: destination),
        Expanded(
          child: ActivitiesItemBuilder(destination: destination),
        ),
      ],
    );
  }
}
