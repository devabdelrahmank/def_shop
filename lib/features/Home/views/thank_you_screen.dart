import 'package:flutter/material.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/thank_you_screen_body.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ThankYouScreenBody(),
    );
  }
}
