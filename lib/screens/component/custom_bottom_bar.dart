import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';
import 'package:test/screens/home/home.dart';
import 'package:test/screens/store/store.dart';
import 'package:test/screens/profil/profil.dart';
import 'package:test/screens/placement/placement.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Color isActivate = TColor.font;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      height: 75, 
      width: double.infinity,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 33,
            color: TColor.white.withOpacity(0.11),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.routeNames);
                },
                icon: const Icon(
                  Icons.home,
                  size: 32,
                ),
                color:
                    MenuState.home == selectedMenu ? TColor.icon : isActivate,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, StorePage.routeNames);
                },
                icon: const Icon(
                  Icons.store_outlined,
                  size: 32,
                ),
                color:
                    MenuState.store == selectedMenu ? TColor.icon : isActivate,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, PlacementPage.routeNames);
                },
                icon: const Icon(
                  Icons.av_timer_rounded,
                  size: 32,
                ),
                color:
                    MenuState.cart == selectedMenu ? TColor.icon : isActivate,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfilPage.routeNames);
                },
                icon: const Icon(
                  Icons.person,
                  size: 32,
                ),
                color: MenuState.profile == selectedMenu
                    ? TColor.icon
                    : isActivate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum MenuState { home, store, cart, profile }
