import 'package:flutter/material.dart';
import 'package:food_app/models/enitys/model_item_danhmuc.dart';
import 'package:food_app/public/paints/paint_food.dart';

class DetailFood extends StatefulWidget {
  ItemDanhmuc ?itemDanhmuc;
  DetailFood({this.itemDanhmuc});
  @override
  _DetailFoodState createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.network(
                    widget.itemDanhmuc!.image_item!,
                    fit: BoxFit.fill,
                  ),),
              ),
              Positioned(
                bottom: 0,
                child: CustomPaint(
                  painter: PaintFood(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              child: Text(widget.itemDanhmuc!.name_item!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),),
                          Container(
                            width: double.infinity,
                            height: 30,
                            child: Row(
                              children: [
                                InkWell(
                                  splashColor: Colors.amber,
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe5eff5),
                                    ),
                                    child: Text("-"),
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xffe5eff5),
                                    ),
                                    child: Text("1")),
                                InkWell(
                                  splashColor: Colors.amber,
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe5eff5),
                                    ),
                                    child: Text("+"),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "${widget.itemDanhmuc!.price_item!}"
                                                ),
                                                TextSpan(
                                                  text: "Vnd"
                                                ),
                                              ]
                                            ),
                                        ),),),
                              ],
                            ),
                          ),
                          Text(
                            "Intro",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Text(widget.itemDanhmuc!.intro_item!,style: TextStyle(fontSize: 18),),
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff37a13d),
                              ),
                              height: 50,
                              alignment: Alignment.center,
                              width: double.infinity,
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
