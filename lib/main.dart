import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:news_app/res/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.getRoutes(),
      theme: ThemeData(
          fontFamily: AppFonts.regular,
          scaffoldBackgroundColor: AppColors.background,
          iconTheme: const IconThemeData(color: AppColors.icon)),
    );
  }
}
