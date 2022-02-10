import 'package:flutter/material.dart';
import 'package:food/utils/colors.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/app_icon.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                    child: BigText(
                      text: "Chinese Side",
                      size: Dimensions.font26,
                    ),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      )),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                        " It has survived not only five centuries, but also the leap into electronic typesetting,"
                        " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                        " sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
                        " like Aldus PageMaker including versions of Lorem Ipsum. "),
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: "\$12.88" + " X " + "0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
              height: Dimensions.bottomHeightBar,
              padding: EdgeInsets.only(
                  top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  color: AppColors.buttonBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height20,
                          bottom: Dimensions.height20,
                          left: Dimensions.width20,
                          right: Dimensions.width20),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.mainColor,
                      )),
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: AppColors.mainColor),
                    child: BigText(
                      text: "\$25 | Add to cart",
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
