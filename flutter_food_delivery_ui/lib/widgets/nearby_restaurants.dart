import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/screens/restaurant_screen.dart';

class NearbyRestaurants extends StatefulWidget {

  @override
  _NearbyRestaurantsState createState() => _NearbyRestaurantsState();
}

class _NearbyRestaurantsState extends State<NearbyRestaurants> {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    for (Restaurant restaurant in restaurants) {
      restaurantList.add(
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {return RestaurantScreen(restaurant: restaurant,);}));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.grey[200],
                width: 2.0,
              ),
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Hero(
                    //using tag as imageUrl because imageUrl is different for all the images
                    // (> Hero animation tag should be different for all as well <)
                    tag: restaurant.imageUrl,
                    child: Image(
                      image: AssetImage(restaurant.imageUrl),
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        restaurant.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0,),
                      RatingStar(rating: restaurant.rating,),
                      SizedBox(height: 4.0,),
                      Text(
                        restaurant.address,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.0,),
                      Text(
                        '1 KM away',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Column(children: restaurantList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: Text(
              'Nearby Restaurants',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
              ),
            ),
          ),
          _buildRestaurants(),
        ],
      ),
    );
  }
}


class RatingStar extends StatelessWidget {

  final int rating;
  RatingStar({this.rating});

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for(int i = 0; i < rating; i++){
      stars += '⭐';
    }
    return Text(stars, style: TextStyle(fontSize: 18.0),);
  }
}
