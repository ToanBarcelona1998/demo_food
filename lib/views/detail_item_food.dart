import 'package:flutter/material.dart';
import 'package:food_app/public/paints/paint_food.dart';

class DetailFood extends StatefulWidget {
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
                  height: MediaQuery.of(context).size.height/2,
                    child: Image.network("https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466__340.jpg",fit: BoxFit.fill,)),
              ),
              Positioned(
                bottom: 0,
                child: CustomPaint(
                  painter: PaintFood(),
                  child: Container(
                    height: MediaQuery.of(context).size.height/2,
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
                              child: Text("Food with Toan Barcelona")),
                          Container(
                            width: double.infinity,
                            height: 30,
                            child: Row(
                              children: [
                                InkWell(
                                  splashColor: Colors.amber,
                                  onTap: (){
                                  },
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
                                  onTap: (){},
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
                                Expanded(child: Container(alignment: Alignment.center,child: Text("100000 Vnd",style: TextStyle(fontSize: 17),))),
                              ],
                            ),
                          ),
                          Text("Intro Food",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                          Text("ABCCCCC"),
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff37a13d),
                              ),
                              height: 50,
                              alignment: Alignment.center,
                              width: double.infinity,
                              child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
