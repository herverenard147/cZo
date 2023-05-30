import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 23),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black.withOpacity(1)),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
          border: InputBorder.none,
          hintText: "Rechercher",
        ),
      ),
    );
  }
}
