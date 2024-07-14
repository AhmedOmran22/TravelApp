import 'package:flutter/material.dart';

import '../../../models/destination_model.dart';
import 'activites_item.dart';
class ActivitiesItemBuilder extends StatelessWidget {
  const ActivitiesItemBuilder({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: destination.activities.length,
      itemBuilder: (context, index) {
        return ActivitiesItem(activity: destination.activities[index]);
      },
    );
  }
}
