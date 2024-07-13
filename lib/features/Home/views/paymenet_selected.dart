import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/payment_selected_body.dart';

class PaymentSelected extends StatelessWidget {
  const PaymentSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Details', style: MyStyles.bigBurbbletitle),
        centerTitle: true,
      ),
      body: const PaymentSelectedBody(),
    );
  }
}
