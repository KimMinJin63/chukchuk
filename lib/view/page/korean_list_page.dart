import 'package:first_project_ver2/controller/bukgu_controller.dart';
import 'package:first_project_ver2/controller/dalseogu_controller.dart';
import 'package:first_project_ver2/controller/dalseongun_controller.dart';
import 'package:first_project_ver2/controller/dongu_controller.dart';
import 'package:first_project_ver2/controller/joongu_controller.dart';
import 'package:first_project_ver2/controller/namgu_controller.dart';
import 'package:first_project_ver2/controller/seogu_controller.dart';
import 'package:first_project_ver2/controller/suseongu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KoreanListPage extends StatelessWidget {
  const KoreanListPage({super.key});
  static const route = '/korean';

  @override
  Widget build(BuildContext context) {
    final districtName = Get.arguments;

    late final controller;
    if (districtName == '동구') {
      controller = Get.find<DonguController>();
      if (controller.donguList.isEmpty) {
        controller.collectCategory();
      }
    } else if (districtName == '서구') {
      controller = Get.find<SeoguController>();
      if (controller.seoguList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '남구') {
      controller = Get.find<NamguController>();
      if (controller.namguList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '중구') {
      controller = Get.find<JoonguController>();
      if (controller.joonguList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '북구') {
      controller = Get.find<BukguController>();
      if (controller.bukguList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '달서구') {
      controller = Get.find<DalseoguController>();
      if (controller.dalseoguList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '달성군') {
      controller = Get.find<DalseongunController>();
      if (controller.dalseongunList.isEmpty) {
         controller.collectCategory();
      }
    }
    else if (districtName == '수성구') {
      controller = Get.find<SuseonguController>();
      if (controller.suseonguList.isEmpty) {
         controller.collectCategory();
      }
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('한식 리스트'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.koreanRestaurants.length,
          itemBuilder: (context, index) {
            final restaurant = controller.koreanRestaurants[index];
            return ListTile(
              title: Text(restaurant.BZ_NM), // 식당 이름으로 변경
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.GNG_CS),
                  Text(restaurant.FD_CS),
                ],
              ), // 식당 주소로 변경
            );
          },
        ),
      ),
    );
  }
}
