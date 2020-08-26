import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String getPrice(Order order) {
    return (order.quantity *
        order.food.price)
        .toString();
  }

  _cartItemList(Order order) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: 130.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage(order.food.imageUrl),
                  height: 130.0,
                  width: 130.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      order.food.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      order.restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.black54)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // increase quantity
                                if (order.quantity <= 0) {
                                  order.quantity = 0;
                                } else {
                                  order.quantity--;
                                }
                              });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '${order.quantity}',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // decrease quantity
                                order.quantity++;
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              '\$${getPrice(order)}',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  double getTotalPrice(Order order){
    double quantityPrice = 0;
    //quantityPrice += order.food.price*order.quantity;
    // TODO: write a for loop to get the total amount
    return quantityPrice;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Cart (${currentUser.cart.length})',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: currentUser.cart.length + 1,
          itemBuilder: (context, index) {
            Order order = currentUser.cart[index];
            if (index < currentUser.cart.length) {
              return _cartItemList(order);
            }
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Estimated Delivery Time:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '25 min',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Total:', style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text('\$${getTotalPrice(order).toStringAsFixed(2)}', style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
                  ),
                  SizedBox(height: 80.0,),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
        ),
        bottomSheet: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: FlatButton(
              splashColor: Colors.deepOrangeAccent,
              onPressed: (){
                //
              },
              child: Text('CHECKOUT', style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.2,
                fontSize: 25.0
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
