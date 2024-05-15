import 'package:dio/dio.dart';
import 'package:first_project_ver2/model/restaurant.dart';

class JoonguService {
  Future<List<Restaurant>> joonguData() async {
    try {
      final Dio dio = Dio();
      var res = await dio
          .get('https://daegufood.go.kr/kor/api/tasty.html?mode=json&addr=중구');
      print('Response: ${res.statusCode} - ${res.data}');
      print('엑스트라데이터 시작');

      var joonguList = List<Map<String, dynamic>>.from(res.data['data']);
      print('하우어바웃 히어 : $joonguList');

      List<Restaurant> restaurant =
          joonguList.map((e) => Restaurant.fromMap(e)).toList();
      print('여기 타입은???? : ${restaurant.runtimeType}');
      return restaurant;
    } catch (e) {
      print('Error occurred: $e');
      throw e;
    }
  }
}
