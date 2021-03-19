import 'package:food_app/models/database/database.dart';
import 'package:food_app/models/enitys/model_cart.dart';
import 'package:sqflite/sqflite.dart';

class CartService{
  static CartService ?_cartService;
  factory CartService(){
    if(_cartService==null){
      _cartService=CartService._();
    }
    return _cartService!;
  }
  CartService._();

  Future<List<CartModel>> getAllCart()async{
    List<CartModel> listCart=[];
    Database database=await MyDatabase().database;
    List<Map<String,dynamic>> listMap=await database.rawQuery("Select* From cart");
    listMap.forEach((element) {
      CartModel cartModel=CartModel.fromJson(element);
      listCart.add(cartModel);
    });
    return listCart;
  }
  Future<bool> addCart(CartModel cartModel)async{
    Database database=await MyDatabase().database;
    int count=await database.insert("cart", cartModel.toJson());
    if(count==0){
      return false;
    }
    return true;
  }
  Future<bool> delAllCart()async{
    Database database=await MyDatabase().database;
    await database.rawDelete("Delete From cart");
    List<Map<String,dynamic>> listMap=await database.rawQuery("Select* From cart");
    int count=listMap.length;
    if(count==0){
      return true;
    }
    else{
      return false;
    }
  }
  Future<bool> delCartId(int id)async{
    Database database=await MyDatabase().database;
    int idDel=await database.rawDelete("Delete From cart where id_cart=?",[id]);
    if(idDel==1){
      return true;
    }
    else{
      return false;
    }
  }
}