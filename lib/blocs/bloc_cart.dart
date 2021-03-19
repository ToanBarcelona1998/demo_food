import 'package:food_app/models/enitys/model_cart.dart';
import 'package:food_app/models/services/cart_service.dart';
import 'package:rxdart/rxdart.dart';

class CartBloc{
  PublishSubject<List<CartModel>> _publishSubject=PublishSubject();
  Stream<List<CartModel>> get stream=>_publishSubject.stream;


  getAllCart()async{
    List<CartModel> list=await CartService().getAllCart();
    if(list.length==0){
      _publishSubject.sink.addError("No have item cart");
    }else{
      _publishSubject.sink.add(list);
    }
  }
  addCart(CartModel cartModel)async{
    bool check=await CartService().addCart(cartModel);
    if(check==true){
      await getAllCart();
    }else{
      _publishSubject.sink.addError("Add item to cart fail");
    }
  }
  delAllCart()async{
    bool check=await CartService().delAllCart();
    if(check==true){
      await getAllCart();
    }else{
      _publishSubject.sink.addError("Delete all item cart fail");
    }
  }
  delCartId(int id)async{
    bool check=await CartService().delCartId(id);
    if(check==true){
      await getAllCart();
    }else{
      _publishSubject.sink.addError("Delete item cart where id=$id fail");
    }
  }

  dispose(){
    _publishSubject.close();
  }
}