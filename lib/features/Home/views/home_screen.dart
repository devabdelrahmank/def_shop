import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: const Text(
          'Def Shop',
          style: TextStyle(color: MyColor.primaryDeebpurple),
        ),
        leading: const Icon(
          CupertinoIcons.antenna_radiowaves_left_right,
          size: 30,
          color: MyColor.primaryDeebpurple,
        ),
        actions: const [
          Icon(
            Icons.shopping_bag_outlined,
            size: 30,
            color: MyColor.primaryDeebpurple,
          ),
          SizedBox(width: 10),
        ],
        centerTitle: false,
      ),
      body: const HomeScreenBody(),
    );
  }
}
