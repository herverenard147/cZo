import 'package:get/get.dart';
import 'package:test/core/app_extension.dart';
import 'package:test/models/offre/menage/menage.dart';

class OfficeMenageController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Menage> cartMenage = <Menage>[].obs;
  RxList<Menage> favoriteMenageList = <Menage>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  isFavoriteMenage(Menage menage) {
    menage.isFavorite = !menage.isFavorite;
    update();
    if (menage.isFavorite) {
      favoriteMenageList.add(menage);
    }
    if (!menage.isFavorite) {
      favoriteMenageList.removeWhere((element) => element == menage);
    }
  }

  void increaseItem(Menage menage) {
    menage.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Menage menage) {
    menage.quantity = menage.quantity-- < 1 ? 0 : menage.quantity--;
    calculateTotalPrice();
    update();
    if (menage.quantity < 1) {
      cartMenage.removeWhere((element) => element == menage);
    }
  }

  addToCart(Menage menage) {
    if (menage.quantity > 0) {
      cartMenage.add(menage);
      cartMenage.assignAll(cartMenage.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartMenage) {
      totalPrice.value += element.quantity * element.price;
    }
  }

  void clearCart() {
    cartMenage.clear();
    totalPrice.value = 0;
    update();
  }
}
