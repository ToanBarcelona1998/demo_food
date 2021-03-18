import 'package:food_app/models/enitys/model_danhmuc.dart';
import 'package:food_app/models/services/danhmuc_service.dart';
import 'package:rxdart/rxdart.dart';

class DanhmucBloc{
  PublishSubject<List<Danhmuc>> _publis=PublishSubject();
  Stream<List<Danhmuc>> get stream=>_publis.stream;

  getAllDanhmuc()async{
    DanhmucService danhmucService=DanhmucService();
    _publis.sink.add(await danhmucService.getAllDanhmuc());
  }
  void dispose(){
    _publis.close();
  }
}