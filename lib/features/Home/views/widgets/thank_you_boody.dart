import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/image.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/details_order_thank_you.dart';

class ThankYouBoody extends StatelessWidget {
  const ThankYouBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: MyColor.primaryGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      child: Column(
        children: [
          verticalSpace(70),
          Text(
            'Thank you!',
            style: MyStyles.bigBurbbletitle.copyWith(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Your transaction was successful',
            style: MyStyles.bigBurbbletitle.copyWith(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          verticalSpace(42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const DetailsOrderThankYouy(title: 'Date', text: '01/24/2023'),
                verticalSpace(20),
                const DetailsOrderThankYouy(title: 'Time', text: '10:15 AM'),
                verticalSpace(20),
                const DetailsOrderThankYouy(title: 'To', text: 'Sam Louis'),
                verticalSpace(30),
                const Divider(
                  color: Color(0xffC7C7C7),
                  thickness: 2,
                ),
                verticalSpace(22),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: MyStyles.bigBurbbletitle.copyWith(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$50.97',
                      style: MyStyles.bigBurbbletitle.copyWith(
                        fontSize: 24,
                        color: MyColor.primaryDeebpurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                verticalSpace(30),
                Container(
                  height: 73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          MyImage.master,
                        ),
                        horizontalSpace(23),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credit Card',
                                style: MyStyles.bigBurbbletitle.copyWith(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Mastercard **78',
                                style: MyStyles.bigBurbbletitle.copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.24,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.barcode,
                    size: 120,
                  ),
                  const Spacer(),
                  Container(
                    height: 58,
                    width: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: MyColor.primaryDeebpurple,
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'PAID',
                        style: MyStyles.bigBurbbletitle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
