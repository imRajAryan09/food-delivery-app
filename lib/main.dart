import 'package:flutter/material.dart';
import 'package:food/controllers/popular_product_controller.dart';
import 'package:food/controllers/recommended_product_controller.dart';
import 'package:food/pages/cart/cart_page.dart';
import 'package:food/pages/food/recommended_food_detail.dart';
import 'package:food/pages/home/food_page_body.dart';
import 'package:food/pages/home/main_home_page.dart';
import 'package:food/routes/route_handler.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const CartPage(),
      // initialRoute: RouteHelper.initial,
      // getPages: RouteHelper.routes,
    );
  }
}
