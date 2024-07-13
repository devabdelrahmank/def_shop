import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/styles.dart';

class DetailsOrderThankYouy extends StatelessWidget {
  final String title;
  final String text;
  const DetailsOrderThankYouy({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: MyStyles.bigBurbbletitle.copyWith(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: MyStyles.bigBurbbletitle.copyWith(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
