import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/image.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/selected_container.dart';

class ChooserPayment extends StatefulWidget {
  const ChooserPayment({super.key});

  @override
  State<ChooserPayment> createState() => _ChooserPaymentState();
}

class _ChooserPaymentState extends State<ChooserPayment> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SelectedContainer(
          boxShadow: index == 0
              ? BoxShadow(
                  color: MyColor.primaryDeebpurple.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 12,
                  offset: const Offset(0, 3),
                )
              : const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
          onTap: () {
            setState(() {
              index = 0;
            });
          },
          image: MyImage.card,
        ),
        SelectedContainer(
          boxShadow: index == 1
              ? BoxShadow(
                  color: MyColor.primaryDeebpurple.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 12,
                  offset: const Offset(0, 3),
                )
              : const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
          onTap: () {
            setState(() {
              index = 1;
            });
          },
          image: MyImage.paypal,
        ),
        SelectedContainer(
          boxShadow: index == 2
              ? BoxShadow(
                  color: MyColor.primaryDeebpurple.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 12,
                  offset: const Offset(0, 3),
                )
              : const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
          onTap: () {
            setState(
              () {
                index = 2;
              },
            );
          },
          image: MyImage.applePay,
        ),
      ],
    );
  }
}
