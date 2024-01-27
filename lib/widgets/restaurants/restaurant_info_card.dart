import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/restaurants/expanded_restaurant_info_card.dart';

class RestaurantInfoCard extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantInfoCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    double viewportHeight = MediaQuery.of(context).size.height;
    double viewportWidth = MediaQuery.of(context).size.width;

    return Positioned.fill(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: viewportWidth * 0.8,
          height: viewportHeight * 0.6,
          child: Card(
            color: Colors.orange[50],
            child: Column(
              children: [
                Text(restaurant.name!),
                Text('Price: CHANGE TO FETCHED'),
                Text('Rating: CHANGE TO FETCHED'),
                Image.network("CHANGE TO FETCHED"),
                IconButton(
                  icon: const Icon(Icons.expand),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExpandedRestaurantInfoCard(
                          key: UniqueKey(),
                          restaurant: restaurant,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
