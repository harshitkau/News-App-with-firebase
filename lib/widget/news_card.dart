import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(8)),
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
                      style:
                          AppStyles().regular(color: AppColors.white, size: 12),
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
              Expanded(child: VxBox().black.size(80, 80).roundedSM.make())
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
                    style: AppStyles().regular(color: AppColors.secondaryText),
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
                    style: AppStyles()
                        .regular(color: AppColors.secondaryText, size: 12),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
