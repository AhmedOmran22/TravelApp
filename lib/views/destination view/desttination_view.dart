import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/destination_model.dart';

import 'widgets/destination_view_body.dart';

class DesttinationView extends StatelessWidget {
  const DesttinationView({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: DestintaionViewBody(
        destination: destination,
      ),
    );
  }
}
