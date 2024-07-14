import 'package:flutter/material.dart';
import 'package:travel_app_ui/views/home%20view/home_view.dart';

void main() {
  runApp(const TravelAppUI());
}

class TravelAppUI extends StatelessWidget {
  const TravelAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
