import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/core/widget/my_text_button.dart';
import 'package:wgbstory_payment/features/Home/views/paymenet_selected.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/chooser_payment.dart';

class PaymentDetailsScreenBody extends StatelessWidget {
  final String image;
  final double price;
  const PaymentDetailsScreenBody({
    super.key,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    //  final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(20),
            SizedBox(
              width: double.infinity,
              height: heightSize * 0.5,
              child: Image.network(image),
            ),
            verticalSpace(20),
            Row(
              children: [
                Text(
                  'Order Subtotal :',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  ' \$$price',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            Row(
              children: [
                Text(
                  'Discount :',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  '50%',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Divider(
                color: Colors.black,
                thickness: 0.4,
              ),
            ),
            Row(
              children: [
                Text(
                  'Total :',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$${price * 0.5}',
                  style: MyStyles.bigBurbbletitle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            verticalSpace(30),
            MyTextButton(
              bodyWidget: Text(
                'Complete Payment',
                style: MyStyles.bigBurbbletitle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              context: context,
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  context: context,
                  builder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      verticalSpace(20),
                      const ChooserPayment(),
                      verticalSpace(30),
                      MyTextButton(
                        bodyWidget: Text(
                          'Continue',
                          style: MyStyles.bigBurbbletitle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        context: context,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PaymentSelected(),
                            ),
                          );
                          Navigator.of(context).pop();
                        },
                        color: MyColor.primaryDeebpurple,
                      ),
                      verticalSpace(20),
                    ],
                  ),
                );
              },
              color: MyColor.primaryDeebpurple,
            ),
          ],
        ),
      ),
    );
  }
}
