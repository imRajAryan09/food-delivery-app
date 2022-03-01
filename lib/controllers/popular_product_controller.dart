import 'package:flutter/material.dart';
import 'package:food/controllers/cart_controller.dart';
import 'package:food/data/repository/popular_product_repo.dart';
import 'package:food/models/products_model.dart';
import 'package:food/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;
  late CartController _cart;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
      print("increment " + _quantity.toString());
    } else {
      _quantity = checkQuantity(_quantity - 1);
      print("decrement " + _quantity.toString());
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar("Item Count", "You can't reduce more",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar("Item Count", "You can't add more",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
    print("the quantity in cart is " + _inCartItems.toString());
  }

  void addItem(ProductModel product) {
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _cart.items.forEach((key, value) {
      print("The id is " +
          value.id.toString() +
          " the quantity is " +
          value.quantity.toString());
    });
    _inCartItems = _cart.getQuantity(product);
  }
}
