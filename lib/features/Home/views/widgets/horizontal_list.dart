import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';

class CategoriesHorizontalList extends StatelessWidget {
  final String text;
  final String image;
  const CategoriesHorizontalList(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: 140,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Image.network(
                image,
                width: 70,
                fit: BoxFit.fill,
              ),
              horizontalSpace(0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  text,
                  textAlign: TextAlign.end,
                  style: MyStyles.bigBurbbletitle.copyWith(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
