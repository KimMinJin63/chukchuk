import 'package:first_project_ver2/view/page/korean_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErasePage extends StatelessWidget {
  const ErasePage({super.key});
  static const route = '/erase';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.toNamed(KoreanListPage.route);
        }, child: Text('동구')),
      ),
    );
  }
}