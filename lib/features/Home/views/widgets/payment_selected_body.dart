import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/core/widget/my_text_button.dart';
import 'package:wgbstory_payment/features/Home/views/thank_you_screen.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/chooser_payment.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/custom_credit_card.dart';

class PaymentSelectedBody extends StatefulWidget {
  const PaymentSelectedBody({super.key});

  @override
  State<PaymentSelectedBody> createState() => _PaymentSelectedBodyState();
}

class _PaymentSelectedBodyState extends State<PaymentSelectedBody> {
  int? index;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            verticalSpace(20),
            CustomCridetCard(
              formKey: _formKey,
              autovalidateMode: autovalidateMode,
            ),
            verticalSpace(30),
            MyTextButton(
              bodyWidget: Text(
                'Pay',
                style: MyStyles.bigBurbbletitle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              context: context,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ThankYouScreen(),
                        ),
                      );
                    },
                  );
                }
              },
              color: MyColor.primaryDeebpurple,
            ),
          ],
        ),
      ),
    );
  }
}
