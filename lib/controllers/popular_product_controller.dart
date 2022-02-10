import 'package:food/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> gtPopularProducList() async {
    Response response = await popularProductRepo.gtPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {

    }
  }
}
