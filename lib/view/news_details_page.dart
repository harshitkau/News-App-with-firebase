import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_details_controller.dart';
import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/news_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class NewsDetailsPage extends GetView<NewsDetailsController> {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          color: Colors.red,
          height: context.screenHeight * 0.3,
        ),
        SingleChildScrollView(
          child: Container(
            color: AppColors.white,
            margin: EdgeInsets.only(top: context.screenHeight * 0.3),
            padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    20.heightBox,
                    CategoryCard(
                      title: "Sports",
                      color: AppColors.lightText,
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.bookmark_outline))
                  ],
                ),
                10.heightBox,
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_today_outlined,
                            color: AppColors.secondaryText, size: 16),
                        5.widthBox,
                        Text(
                          "20 April, 2024",
                          style: AppStyles().regular(
                              size: 12, color: AppColors.secondaryText),
                        )
                      ],
                    ),
                    10.widthBox,
                    Row(
                      children: [
                        const Icon(Icons.speed,
                            color: AppColors.secondaryText, size: 16),
                        5.widthBox,
                        Text(
                          "1 min read",
                          style: AppStyles().regular(
                              size: 12, color: AppColors.secondaryText),
                        )
                      ],
                    ),
                  ],
                ),
                10.heightBox,
                Text(
                  "Margot Robbie had a good reason to the bird over the gotham city"
                      .allWordsCapitilize(),
                  style: AppStyles().semibold(size: 16),
                ),
                5.heightBox,
                VxBox()
                    .size(context.screenWidth * 0.4, 5)
                    .rounded
                    .color(AppColors.primaryButton)
                    .make(),
                10.heightBox,
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryButton,
                  ),
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: AppColors.white,
                  ),
                  onPressed: () {},
                  label: Text(
                    AppStrings.comment,
                    style: AppStyles().regular(color: AppColors.white),
                  ),
                ),
                10.heightBox,
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.remove_red_eye,
                            color: AppColors.secondaryText, size: 16),
                        5.widthBox,
                        Text(
                          "1146 views",
                          style: AppStyles().regular(
                              size: 12, color: AppColors.secondaryText),
                        )
                      ],
                    ),
                    10.widthBox,
                    Row(
                      children: [
                        const Icon(Icons.favorite,
                            color: AppColors.heartGrey, size: 16),
                        5.widthBox,
                        Text(
                          "255 People like this",
                          style: AppStyles().regular(
                              size: 12, color: AppColors.secondaryText),
                        )
                      ],
                    ),
                  ],
                ),
                20.heightBox,
                // main section
                Text(
                  "A rocket that was supposed to become Japan’s first from the private sector to put a satellite into orbit exploded shortly after takeoff on March 13, a livestreamed video showed. Online video showed the rocket called Kairos blasting off from Wakayama Prefecture, in central Japan, a mountainous area filled with trees, but exploding midair within seconds.",
                  style: AppStyles().regular(),
                ),
                20.heightBox,
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                20.heightBox,
                Text(
                  "A rocket that was supposed to become Japan’s first from the private sector to put a satellite into orbit exploded shortly after takeoff on March 13, a livestreamed video showed. Online video showed the rocket called Kairos blasting off from Wakayama Prefecture, in central Japan, a mountainous area filled with trees, but exploding midair within seconds.A rocket that was supposed to become Japan’s first from the private sector to put a satellite into orbit exploded shortly after takeoff on March 13, a livestreamed video showed. Online video showed the rocket called Kairos blasting off from Wakayama Prefecture, in central Japan, a mountainous area filled with trees, but exploding midair within seconds",
                  style: AppStyles().regular(),
                ),
                20.heightBox,
                Text(
                  "You May Also Like".allWordsCapitilize(),
                  style: AppStyles().semibold(size: 16),
                ),
                5.heightBox,
                VxBox()
                    .size(context.screenWidth * 0.4, 5)
                    .rounded
                    .color(AppColors.primaryButton)
                    .make(),

                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return NewsCard();
                  },
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    controller.navigateBack();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: AppColors.white,
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
