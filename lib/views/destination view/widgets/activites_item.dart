import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/models/activity_model.dart';

class ActivitiesItem extends StatelessWidget {
  const ActivitiesItem({
    super.key,
    required this.activity,
    // required this.destination,
  });

  // final Destination destination;
  final Activity activity;
  Text _buildStars(int rating) {
    String starts = '';
    for (int i = 0; i < rating; i++) {
      starts += '⭐ ';
    }
    return Text(starts);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
          padding: const EdgeInsets.fromLTRB(150, 20, 20, 20),
          height: MediaQuery.of(context).size.height * .22,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 130,
                    child: Text(
                      activity.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        r'$ ' '${activity.price.toString()}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    activity.type,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'per Pax',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              _buildStars(activity.rating),
              const SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(activity.startTimes[0]),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(activity.startTimes[1]),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 20,
          top: 10,
          bottom: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.height * .22,
              image: AssetImage(
                activity.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
