import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/blocs/bloc_danhmuc.dart';
import 'package:food_app/blocs/bloc_item_danhmuc.dart';
import 'package:food_app/models/enitys/model_danhmuc.dart';
import 'package:food_app/public/paints/paint_app_bar.dart';
import 'package:food_app/views/item_danhmuc_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DanhmucBloc? _danhmucBloc;

  @override
  void initState() {
    super.initState();
    _danhmucBloc = DanhmucBloc();
    _danhmucBloc!.getAllDanhmuc();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _danhmucBloc!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: CustomPaint(
                        painter: PaintAppBar(),
                        child: Container(
                          alignment: Alignment.bottomRight,
                          height: MediaQuery.of(context).size.height / 4,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              "Our Menu's Restaurent",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Expanded(
                      child: StreamBuilder<List<Danhmuc>>(
                        stream: _danhmucBloc!.stream,
                        builder: (context, snapshot) {
                      return snapshot.hasData
                          ? ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDanhmucPage(item_name: snapshot.data![index].name_danhmuc,item_danhmuc_id: snapshot.data![index].id_danhmuc,)));
                                      },
                                      borderRadius: BorderRadius.circular(15),
                                      splashColor: Colors.deepOrangeAccent,
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        alignment: Alignment.center,
                                        height: 65,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xffe6f0fa),
                                        ),
                                        child: Image.network(snapshot
                                            .data![index].image_danhmuc!),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                                      child: Text(
                                        snapshot.data![index].name_danhmuc!,
                                      ),
                                    ),
                                  ],
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
            Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              child: Text(
                "Most Popular",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Card(
                              child: Image.network(
                                  "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lòng lợn",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "120.000 VND",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
