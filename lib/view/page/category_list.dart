import 'package:first_project_ver2/view/page/korean_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  static const route = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '동구');
                  }, child: Text('동구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '서구');
                  }, child: Text('서구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '남구');
                  }, child: Text('남구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '중구');
                  }, child: Text('중구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '북구');
                  }, child: Text('북구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '달서구');
                  }, child: Text('달서구')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '달성군');
                  }, child: Text('달성군')),
            ElevatedButton(
              onPressed: () {
            Get.toNamed(KoreanListPage.route, arguments: '수성구');
                  }, child: Text('수성구')),
          ],
        )),
    );
  }
}
