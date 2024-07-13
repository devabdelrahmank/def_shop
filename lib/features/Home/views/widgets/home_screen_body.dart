// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/best_selling.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/header_home.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: MyColor.primaryGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderHome(),
              verticalSpace(20),
              const Text('Best Selling', style: MyStyles.bigBurbbletitle),
              verticalSpace(10),
              const Expanded(child: BestSelling()),
              verticalSpace(10),
            ],
          ),
        ),
      ],
    );
  }
}
