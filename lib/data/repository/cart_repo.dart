import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});
  List<String> cart = [];
  void addToCartList(List<CartModel> cartList) {
    cart = [];
    for (var element in cartList) {
      return cart.add(jsonEncode(element));
    }
    sharedPreferences.setStringList('Cart-List', cart);
    print(sharedPreferences.getStringList("Cart-List"));
  }
}
