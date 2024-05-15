import 'package:first_project_ver2/model/restaurant.dart';
import 'package:first_project_ver2/service/bukgu_service.dart';
import 'package:get/state_manager.dart';

class BukguController extends GetxController {
  RxList<Restaurant> bukguList = RxList<Restaurant>();
  RxList<Restaurant> koreanRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> westernRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> japaneseRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> traditionRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> dessertRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> chineseRestaurants = <Restaurant>[].obs;
  RxList<Restaurant> fusionRestaurants = <Restaurant>[].obs;

  // 음식점을 한식과 양식으로 분류하는 함수

  getRestaurant() async {
    try {
      print('여기는 북구');
      List<Restaurant> bukguRestaurant = await BukguService().bukguData();
      bukguList.assignAll(bukguRestaurant);
      print(bukguRestaurant.length);
    } catch (e) {
      print('Error BukguController getRestaurant: $e');
    }
  }

  collectCategory() async {
    void categorizeRestaurant(Restaurant restaurant) {
      if (restaurant.FD_CS == '한식') {
        koreanRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '양식') {
        westernRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '일식') {
        japaneseRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '전통차/커피전문점') {
        traditionRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '디저트/베이커리') {
        dessertRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '중식') {
        chineseRestaurants.add(restaurant);
      } else if (restaurant.FD_CS == '퓨전/뷔페') {
        fusionRestaurants.add(restaurant);
      }
    }

    try {
      var result = await BukguService().bukguData();
      print('북구 함수 찍힘');

      // 식당을 분류하는 과정
      for (var restaurant in result) {
        categorizeRestaurant(restaurant);
      }

      print('한식: $koreanRestaurants');
      print('양식: $westernRestaurants');
      print('일식: $japaneseRestaurants');
      print('전통차/커피전문점: $traditionRestaurants');
      print('디저트/베이커리: $dessertRestaurants');
      print('중식: $chineseRestaurants');
      print('퓨전/뷔페: $fusionRestaurants');
    } catch (e) {
      print('Error occurred: $e');
      // 에러에 대한 추가 처리를 원한다면 여기에 구현
    }
  }
}
