import 'package:first_project_ver2/controller/bukgu_controller.dart';
import 'package:first_project_ver2/controller/dalseogu_controller.dart';
import 'package:first_project_ver2/controller/dalseongun_controller.dart';
import 'package:first_project_ver2/controller/dongu_controller.dart';
import 'package:first_project_ver2/controller/joongu_controller.dart';
import 'package:first_project_ver2/controller/namgu_controller.dart';
import 'package:first_project_ver2/controller/seogu_controller.dart';
import 'package:first_project_ver2/controller/suseongu_controller.dart';
import 'package:first_project_ver2/util/app_pages.dart';
import 'package:first_project_ver2/view/page/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => DonguController(), fenix: true);
        Get.lazyPut(() => SeoguController(), fenix: true);
        Get.lazyPut(() => NamguController(), fenix: true);
        Get.lazyPut(() => JoonguController(), fenix: true);
        Get.lazyPut(() => BukguController(), fenix: true);
        Get.lazyPut(() => DalseoguController(), fenix: true);
        Get.lazyPut(() => DalseongunController(), fenix: true);
        Get.lazyPut(() => SuseonguController(), fenix: true);
      }),
      getPages: AppPages.pages,
      initialRoute: CategoryList.route,
    );
  }
}
