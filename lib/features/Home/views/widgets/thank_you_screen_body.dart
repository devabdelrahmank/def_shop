import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/thank_you_boody.dart';

class ThankYouScreenBody extends StatelessWidget {
  const ThankYouScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.of(context).size.height;
    // var widthSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 0),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: ThankYouBoody(),
          ),
          Positioned(
            right: -20,
            bottom: heightSize * 0.2,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: -20,
            bottom: heightSize * 0.2,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: MyColor.primaryGrey,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: MyColor.primaryDeebpurple,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 75,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: heightSize * 0.2 + 16,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: List.generate(
                  20,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        color: MyColor.colorB8B8B8,
                        width: 10,
                        height: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
