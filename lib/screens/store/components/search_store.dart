
import 'package:flutter/material.dart';

class SearchBoxStore extends StatelessWidget {
  const SearchBoxStore({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.04, vertical: size.height * 0.003),
      child: Container(
        // width: size.width * 0.5,
        // height: size.width * 0.18,
        margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 23),
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(1)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Rechercher",
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.black.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
