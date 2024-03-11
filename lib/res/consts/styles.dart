import 'package:news_app/res/consts/consts.dart';

class AppStyles {
  TextStyle regular(
      {Color? color,
      String? fontfamily = AppFonts.regular,
      double? size = 14.0,
      FontWeight? fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  TextStyle semibold(
      {Color? color,
      String? fontfamily = AppFonts.semibold,
      double? size = 14.0,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  TextStyle bold(
      {Color? color,
      String? fontfamily = AppFonts.bold,
      double? size = 14.0,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
}
