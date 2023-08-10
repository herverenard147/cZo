import 'package:get/get.dart';
import 'package:test/core/app_extension.dart';
import 'package:test/models/produit/produit.dart';

class OfficeProduitController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Produit> cartProduit = <Produit>[].obs;
  RxList<Produit> favoriteProduitList = <Produit>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  isFavoriteProduit(Produit produit) {
    produit.isFavorite = !produit.isFavorite;
    update();
    if (produit.isFavorite) {
      favoriteProduitList.add(produit);
    }
    if (!produit.isFavorite) {
      favoriteProduitList.removeWhere((element) => element == produit);
    }
  }

  void increaseItem(Produit produit) {
    produit.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Produit produit) {
    produit.quantity = produit.quantity-- < 1 ? 0 : produit.quantity--;
    calculateTotalPrice();
    update();
    if (produit.quantity < 1) {
      cartProduit.removeWhere((element) => element == produit);
    }
  }

  addToCart(Produit produit) {
    if (produit.quantity > 0) {
      cartProduit.add(produit);
      cartProduit.assignAll(cartProduit.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartProduit) {
      totalPrice.value += element.quantity * element.price;
    }
  }

  void clearCart() {
    cartProduit.clear();
    totalPrice.value = 0;
    update();
  }
}
