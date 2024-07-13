import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/payment_details_screen_body.dart';

class PaymentDetailsScreen extends StatelessWidget {
  final String image;
  final double price;
  const PaymentDetailsScreen({
    super.key,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: MyStyles.bigBurbbletitle),
        centerTitle: true,
      ),
      body: PaymentDetailsScreenBody(
        image: image,
        price: price,
      ),
    );
  }
}
