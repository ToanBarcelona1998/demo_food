import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_app/blocs/bloc_cart.dart';
import 'package:food_app/models/enitys/model_cart.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartBloc? _cartBloc;

  @override
  void initState() {
    // TODO: implement initState
    _cartBloc = CartBloc();
    _cartBloc!.getAllCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).padding.top),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.keyboard_backspace_sharp,
                                  size: 30,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  "All Item Cart",
                                  style: TextStyle(
                                      fontSize: 22, fontFamily: "Chango"),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                child: InkWell(
                                  onTap: () {
                                    _cartBloc!.delAllCart();
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: StreamBuilder<List<CartModel>>(
                            stream: _cartBloc!.stream,
                            builder: (context, snashot) {
                              if (snashot.hasError) {
                                return Text(snashot.error.toString());
                              } else if (!snashot.hasData) {
                                return CircularProgressIndicator();
                              } else {
                                // return Container();
                                return Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 12),
                                  child: ListView.builder(
                                    itemCount: snashot.data!.length,
                                    padding: EdgeInsets.zero,
                                    itemBuilder: (context, index) {
                                      return Slidable(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Card(
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  6,
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            4,
                                                    height: double.infinity,
                                                    child: Image.network(
                                                      snashot.data![index]
                                                          .image_cart!.trim(),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(
                                                            snashot.data![index]
                                                                .name_cart!.trim(),
                                                            style: TextStyle(
                                                                fontSize: 16),
                                                          ),
                                                          RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Số lượng: ",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Color(
                                                                            0xffb9c3cb)),
                                                                  ),
                                                                  TextSpan(
                                                                    text: snashot
                                                                        .data![
                                                                            index]
                                                                        .number_cart!
                                                                        .toString().trim(),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Color(
                                                                            0xffb9c3cb),),
                                                                  ),
                                                                ]),
                                                          ),
                                                          RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: snashot
                                                                        .data![
                                                                            index]
                                                                        .price_one_item!
                                                                        .toString().trim(),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xffd6681f),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        " Vnd",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xffd6681f),
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          IconSlideAction(
                                            icon: Icons.delete,
                                            color: Color(0xffe6f0fa),
                                            onTap: (){
                                              _cartBloc!.delCartId(snashot.data![index].id_cart!);
                                            },
                                          ),
                                        ],
                                        actionPane: SlidableDrawerActionPane(),
                                      );
                                    },
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
