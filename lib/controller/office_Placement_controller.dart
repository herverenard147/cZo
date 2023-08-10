import 'package:get/get.dart';
import 'package:test/core/app_extension.dart';
import 'package:test/models/offre/placement/fille.dart';

class OfficePlacementController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Fille> cartFille = <Fille>[].obs;
  RxList<Fille> favoriteFilleList = <Fille>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  // isFavoriteFille(Fille placement) {
  //   placement.isFavorite = !placement.isFavorite;
  //   update();
  //   if (placement.isFavorite) {
  //     favoriteFilleList.add(placement);
  //   }
  //   if (!placement.isFavorite) {
  //     favoriteFilleList.removeWhere((element) => element == placement);
  //   }
  // }

  void increaseItem(Fille placement) {
    placement.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Fille placement) {
    placement.quantity = placement.quantity-- < 1 ? 0 : placement.quantity--;
    calculateTotalPrice();
    update();
    if (placement.quantity < 1) {
      cartFille.removeWhere((element) => element == placement);
    }
  }

  addToCart(Fille placement) {
    if (placement.quantity > 0) {
      cartFille.add(placement);
      cartFille.assignAll(cartFille.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartFille) {
      totalPrice.value += element.quantity * element.price;
    }
  }

  void clearCart() {
    cartFille.clear();
    totalPrice.value = 0;
    update();
  }
}
