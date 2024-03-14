import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_controller.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var categoriesList = [
      AppStrings.explore,
      AppStrings.entertainment,
      AppStrings.sport,
      AppStrings.politics,
      AppStrings.travel,
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: AppColors.white,
                child: Row(
                  children: List.generate(
                      categoriesList.length,
                      (index) => Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    categoriesList[index].capitalized,
                                    style: AppStyles().bold(
                                        color: index ==
                                                controller
                                                    .currentSelectedCategoryIndex
                                            ? AppColors.primaryButton
                                            : AppColors.secondaryText),
                                  )),
                              VxBox()
                                  .size(30, 3)
                                  .rounded
                                  .color(index ==
                                          controller
                                              .currentSelectedCategoryIndex
                                      ? AppColors.primaryButton
                                      : Colors.transparent)
                                  .make()
                            ],
                          )),
                ),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
                viewportFraction: 1.0,
                itemCount: 3,
                autoPlay: true,
                onPageChanged: (index) {
                  controller.changeSwiperIndex(index);
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        // padding: EdgeInsets.all(8),
                        color: Vx.randomPrimaryColor,
                      ),
                      Positioned(
                        top: 14,
                        left: 10,
                        child: VxBox(
                                child: Text(
                          "Sports",
                          style: AppStyles()
                              .regular(color: AppColors.white, size: 12),
                        ))
                            .color(AppColors.primaryButton)
                            .padding(const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5))
                            .roundedSM
                            .make(),
                      ),
                      Positioned(
                        top: 14,
                        right: 10,
                        child: VxBox(
                                child: Row(
                          children: [
                            Icon(Icons.favorite,
                                color: AppColors.white, size: 14),
                            5.widthBox,
                            Text(
                              "255",
                              style: AppStyles()
                                  .regular(color: AppColors.white, size: 12),
                            ),
                          ],
                        ))
                            .color(Colors.black26)
                            .padding(const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5))
                            .roundedSM
                            .make(),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text(
                              "Lionel Messi's 2012 was the greatest year seen from a footballer"
                                  .allWordsCapitilize(),
                              style:
                                  AppStyles().semibold(color: AppColors.white),
                            ),
                            Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: 14, color: AppColors.white),
                                5.widthBox,
                                Text(
                                  "20 April 2023",
                                  style: AppStyles()
                                      .regular(color: AppColors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ).box.roundedSM.clip(Clip.hardEdge).make();
                }),
            10.heightBox,
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(
                            index == controller.currentSwiperIndex ? 30 : 5, 5)
                        .color(index == controller.currentSwiperIndex
                            ? AppColors.primaryButton
                            : AppColors.sliderDot)
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            5.heightBox,
            Row(
              children: [
                VxBox()
                    .size(5, 20)
                    .color(AppColors.primaryButton)
                    .rounded
                    .make(),
                5.widthBox,
                Text(
                  AppStrings.popularNews,
                  style: AppStyles().semibold(),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.viewAll,
                    style: AppStyles().regular(color: AppColors.secondaryText),
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Margot Robbie had a good reason to the bird over the gotham city"
                                      .allWordsCapitilize(),
                                  style: AppStyles().regular(size: 12),
                                ),
                                10.heightBox,
                                VxBox(
                                        child: Text(
                                  "Entertainment",
                                  style: AppStyles().regular(
                                      color: AppColors.white, size: 12),
                                ))
                                    .color(AppColors.icon)
                                    .padding(const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5))
                                    .roundedSM
                                    .make(),
                              ],
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                              child:
                                  VxBox().black.size(80, 80).roundedSM.make())
                        ],
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  size: 14, color: AppColors.secondaryText),
                              5.widthBox,
                              Text(
                                "20 April 2023",
                                style: AppStyles()
                                    .regular(color: AppColors.secondaryText),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite,
                                  color: AppColors.secondaryText, size: 14),
                              5.widthBox,
                              Text(
                                "255",
                                style: AppStyles().regular(
                                    color: AppColors.secondaryText, size: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ).onTap(() {
                  controller.onNewsTapped();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
