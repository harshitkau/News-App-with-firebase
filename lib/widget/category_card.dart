import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  const CategoryCard(
      {super.key,
      required this.title,
      this.color = AppColors.icon,
      this.textColor = AppColors.white});

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Text(
      "$title",
      style: AppStyles().regular(color: textColor, size: 12),
    ))
        .color(color!)
        .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 5))
        .roundedSM
        .make();
  }
}
