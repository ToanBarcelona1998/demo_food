import 'package:flutter/material.dart';
import 'package:food_app/models/enitys/model_cart.dart';
import 'package:food_app/models/services/cart_service.dart';
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: ElevatedButton(
          child: Text("add"),
          onPressed: (){
          },
        )),
      ),
    );
  }
}
