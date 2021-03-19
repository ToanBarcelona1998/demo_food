import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/blocs/bloc_danhmuc.dart';
import 'package:food_app/models/enitys/model_danhmuc.dart';
import 'package:food_app/models/enitys/model_popular.dart';
import 'package:food_app/public/paints/paint_app_bar.dart';
import 'package:food_app/views/item_danhmuc_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PopularModel> listClone = [];
  DanhmucBloc? _danhmucBloc;

  @override
  void initState() {
    super.initState();
    listClone.add(PopularModel(
        name: "Lòng lợn",
        image:
            "https://anh.24h.com.vn//upload/2-2017/images/2017-06-22/1498132918-thumbnail.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Mực khô xào mắm me",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-1.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Chân gà ngâm giấm",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-3.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Mề gà trộn giấm và dầu ớt",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-4.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Tai heo ngũ vị cuộn",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-5.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Bắp bò ngâm mắm",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-8.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Gỏi bò tái chanh",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-11.jpg",
        price: 120000));
    listClone.add(PopularModel(
        name: "Bạch tuộc xào sả ớt",
        image:
            "https://reviewtop.vn/wp-content/uploads/2019/09/cach-lam-mon-nhau-ngon-12.jpg",
        price: 120000));
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ItemDanhmucPage(
                                                          item_name: snapshot
                                                              .data![index]
                                                              .name_danhmuc,
                                                          item_danhmuc_id:
                                                              snapshot
                                                                  .data![index]
                                                                  .id_danhmuc,
                                                        )));
                                          },
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 8.0),
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
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listClone.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: double.infinity,
                            width: MediaQuery.of(context).size.width/4,
                            child: Image.network(
                                listClone[index].image!,fit: BoxFit.fill,),
                          ),
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
                                listClone[index].name!,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "${listClone[index].price} VND",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
