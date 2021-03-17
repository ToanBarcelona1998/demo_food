import 'package:flutter/material.dart';
import 'package:food_app/models/services/danhmuc_service.dart';
import 'package:food_app/public/paints/paint_app_bar.dart';

class HomePage extends StatelessWidget {
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
                    CustomPaint(
                      painter: PaintAppBar(),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: MediaQuery.of(context).size.height / 5,
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
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    height: 70,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe6f0fa),
                                    ),
                                    child: Image.network(
                                        "https://img.icons8.com/plasticine/2x/cute-pumpkin.png"),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text("Food ${index + 1}"),
                              ],
                            ),
                          ),
                        ),
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
