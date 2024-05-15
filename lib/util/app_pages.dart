import 'package:first_project_ver2/util/app_routes.dart';
import 'package:first_project_ver2/view/page/erase_page.dart';
import 'package:first_project_ver2/view/page/category_list.dart';
import 'package:first_project_ver2/view/page/korean_list_page.dart';
import 'package:get/get.dart';

class AppPages{
  static final pages = [
 GetPage(
        name: AppRoutes.korean,
        page: () => const KoreanListPage(),
        transition: Transition.fadeIn),
 GetPage(
        name: AppRoutes.erase,
        page: () => const ErasePage(),
        transition: Transition.fadeIn),
 GetPage(
        name: AppRoutes.category,
        page: () => const CategoryList(),
        transition: Transition.fadeIn),
  ];
}