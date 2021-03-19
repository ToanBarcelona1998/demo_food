import 'package:flutter/material.dart';
import 'package:food_app/models/enitys/model_item_danhmuc.dart';
import 'package:food_app/public/paints/paint_food.dart';

class DetailFood extends StatefulWidget {
  ItemDanhmuc? itemDanhmuc;

  DetailFood({this.itemDanhmuc});

  @override
  _DetailFoodState createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  int ?count;

  @override
  void initState() {
    count=1;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          child: Image.network(
                            widget.itemDanhmuc!.image_item!,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).padding.top + 8,
                          left: 8,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            splashColor: Colors.amber,
                            child: CircleAvatar(
                              backgroundColor: Color(0xfff4a483),
                              child: Icon(
                                Icons.keyboard_backspace_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).padding.top + 8,
                          right: 8,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.amber,
                            child: CircleAvatar(
                              backgroundColor: Color(0xfff4a483),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Positioned(
                bottom: 0,
                child: CustomPaint(
                  painter: PaintFood(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: Text(
                              widget.itemDanhmuc!.name_item!,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height:12,
                          ),
                          Container(
                            width: double.infinity,
                            height: 40,
                            child: Row(
                              children: [
                                InkWell(
                                  splashColor: Colors.amber,
                                  onTap: () {
                                   setState(() {
                                     if(count==0){
                                       count=0;
                                     }else{
                                       count=count!-1;;
                                     }
                                   });
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
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: double.infinity,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffe5eff5),
                                  ),
                                  child: Text("$count"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  splashColor: Colors.amber,
                                  onTap: () {
                                   setState(() {
                                     if(count==10){
                                       count=0;
                                     }else{
                                       count=count!+1;
                                     }
                                   });
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
                                    child: Text("+"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text:
                                          "${widget.itemDanhmuc!.price_item!*count!}",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        TextSpan(
                                            text: " Vnd",
                                            style: TextStyle(fontSize: 18)),
                                      ]),
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
                            child: SingleChildScrollView(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Intro",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        widget.itemDanhmuc!.intro_item!,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
