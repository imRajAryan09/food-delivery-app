import 'package:food/pages/food/popular_food_detail.dart';
import 'package:food/pages/home/main_home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static  String getPopularFood()=> '$popularFood';
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
    GetPage(name: popularFood, page: () => PopularFoodDetail()),
  ];
}
