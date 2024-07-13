import 'package:flutter/material.dart';

class SelectedContainer extends StatelessWidget {
  final void Function() onTap;
  final String image;
  final BoxShadow? boxShadow;
  const SelectedContainer({
    super.key,
    required this.onTap,
    required this.image,
    required this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 104,
        height: 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 0.7),
          boxShadow: [
            boxShadow!,
          ],
        ),
        child: Image.asset(
          image,
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
