import 'package:get/get.dart';
import 'package:test/core/app_extension.dart';
import 'package:test/models/offre/pressing/pressing.dart';

class OfficePressingController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Pressing> cartPressing = <Pressing>[].obs;
  RxList<Pressing> favoritePressingList = <Pressing>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  isFavoritePressing(Pressing pressing) {
    pressing.isFavorite = !pressing.isFavorite;
    update();
    if (pressing.isFavorite) {
      favoritePressingList.add(pressing);
    }
    if (!pressing.isFavorite) {
      favoritePressingList.removeWhere((element) => element == pressing);
    }
  }

  void increaseItem(Pressing pressing) {
    pressing.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Pressing pressing) {
    pressing.quantity = pressing.quantity-- < 1 ? 0 : pressing.quantity--;
    calculateTotalPrice();
    update();
    if (pressing.quantity < 1) {
      cartPressing.removeWhere((element) => element == pressing);
    }
  }

  addToCart(Pressing pressing) {
    if (pressing.quantity > 0) {
      cartPressing.add(pressing);
      cartPressing.assignAll(cartPressing.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartPressing) {
      totalPrice.value += element.quantity * element.price;
    }
  }

  void clearCart() {
    cartPressing.clear();
    totalPrice.value = 0;
    update();
  }
}
