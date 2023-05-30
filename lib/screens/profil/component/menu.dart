
import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

class ProfilMenu extends StatelessWidget {
  const ProfilMenu({
    super.key,
    required this.title,
    required this.icon,
    this.isactivate = true,
    required this.press,
    this.textColor,
  });
  final String title;
  final IconData icon;
  final Color? textColor;
  final bool isactivate;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: TColor.cardstore,
            ),
            child: Icon(
              icon,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: isactivate ? TColor.textColor : TColor.font,
            ),
          ),
          trailing: isactivate
              ? Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 18,
                    color: Colors.grey,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
