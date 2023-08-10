import 'package:get/get.dart';
import 'package:test/core/app_extension.dart';
import 'package:test/models/offre/nounou/nounou.dart';

class OfficeNounouController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Nounou> cartNounou = <Nounou>[].obs;
  RxList<Nounou> favoriteNounouList = <Nounou>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  isFavoriteNounou(Nounou nounou) {
    nounou.isFavorite = !nounou.isFavorite;
    update();
    if (nounou.isFavorite) {
      favoriteNounouList.add(nounou);
    }
    if (!nounou.isFavorite) {
      favoriteNounouList.removeWhere((element) => element == nounou);
    }
  }

  void increaseItem(Nounou nounou) {
    nounou.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Nounou nounou) {
    nounou.quantity = nounou.quantity-- < 1 ? 0 : nounou.quantity--;
    calculateTotalPrice();
    update();
    if (nounou.quantity < 1) {
      cartNounou.removeWhere((element) => element == nounou);
    }
  }

  addToCart(Nounou nounou) {
    if (nounou.quantity > 0) {
      cartNounou.add(nounou);
      cartNounou.assignAll(cartNounou.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartNounou) {
      totalPrice.value += element.quantity * element.price;
    }
  }

  void clearCart() {
    cartNounou.clear();
    totalPrice.value = 0;
    update();
  }
}
