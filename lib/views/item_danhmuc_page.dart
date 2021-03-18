import 'package:flutter/material.dart';
import 'package:food_app/blocs/bloc_item_danhmuc.dart';
import 'package:food_app/models/enitys/model_item_danhmuc.dart';

class ItemDanhmucPage extends StatefulWidget {
  String? item_name;
  int? item_danhmuc_id;

  ItemDanhmucPage({this.item_name, this.item_danhmuc_id});

  @override
  _ItemDanhmucPageState createState() => _ItemDanhmucPageState();
}

class _ItemDanhmucPageState extends State<ItemDanhmucPage> {
  ItemDanhmucBloc? _itemDanhmucBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemDanhmucBloc = ItemDanhmucBloc();
    _itemDanhmucBloc!.getItemDanhmuc(widget.item_danhmuc_id!);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _itemDanhmucBloc!.dispose();
    super.dispose();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.keyboard_backspace_sharp),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.shopping_cart_outlined),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Our Menu 's Food",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Chango"),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "in the restaurent an",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffa3a7a8))),
                          TextSpan(
                              text: " Toan Barcelona 98",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff379f3b))),
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Text(
                    "Item ${widget.item_name}",
                    style: TextStyle(
                        fontFamily: "Chango",
                        fontSize: 22,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: StreamBuilder<List<ItemDanhmuc>>(
                    stream: _itemDanhmucBloc!.stream,
                    builder: (context, snapshot) {
                      return snapshot.hasData
                          ? ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: InkWell(
                                  onTap: (){},
                                  splashColor: Color(0xff9cc57c),
                                  child: Container(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.network(
                                            snapshot.data![index].image_item!,
                                            fit: BoxFit.fill,
                                            width: 80,
                                            height: 70,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data![index].name_item!,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Color(0xffdd9f69)),
                                              ),
                                              Text(
                                                snapshot.data![index].intro_item!,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "${snapshot.data![index].price_item!} Vnd",
                                                style: TextStyle(
                                                    color: Color(0xff252a3e),
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : CircularProgressIndicator();
                    },
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
