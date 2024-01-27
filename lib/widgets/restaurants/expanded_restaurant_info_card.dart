import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';


class ExpandedRestaurantInfoCard extends StatelessWidget {
  final Restaurant restaurant;

  const ExpandedRestaurantInfoCard({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network("CHANGE TO FETCHED"),
            Text('Name: ${restaurant.name}',
                style: Theme.of(context).textTheme.headline6),
            Text('Price: \$${"CHANGE TO FETCHED"}',
                style: Theme.of(context).textTheme.subtitle1),
            Text('Rating: ${"CHANGE TO FETCHED"}',
                style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}
