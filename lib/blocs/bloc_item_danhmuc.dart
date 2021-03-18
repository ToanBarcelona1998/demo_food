import 'package:food_app/models/enitys/model_item_danhmuc.dart';
import 'package:food_app/models/services/item_danhmuc_service.dart';
import 'package:rxdart/rxdart.dart';

class ItemDanhmucBloc{
  PublishSubject<List<ItemDanhmuc>> _publishSubject=PublishSubject();
  Stream<List<ItemDanhmuc>> get stream=>_publishSubject.stream;

  getItemDanhmuc(int id_danhmuc) async{
    ItemDanhmucService item=ItemDanhmucService();
    _publishSubject.sink.add(await item.getItemDanhmuc(id_danhmuc));
  }

  dispose(){
    _publishSubject.close();
  }
}