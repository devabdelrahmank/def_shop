import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/constant.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/features/Home/views/payment_details_screen.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: collection.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(22),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PaymentDetailsScreen(
                          image: collection[index]['imageUrl'],
                          price: collection[index]['price'],
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Column(
                      children: [
                        //! SizedBox1,
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: MyColor.primaryDeebpurple,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '50%',
                                    style: MyStyles.bigBurbbletitle.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        //!SizedBox2,
                        SizedBox(
                          height: 90,
                          width: double.infinity,
                          child: Image.network(
                            collection[index]['imageUrl'],
                            fit: BoxFit.contain,
                          ),
                        ),
                        //!SizedBox3,
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                collection[index]['name'],
                                style: MyStyles.bigBurbbletitle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                              ),
                              Text(
                                collection[index]['description'],
                                style: MyStyles.bigBurbbletitle.copyWith(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              verticalSpace(5),
                              Row(
                                children: [
                                  Text(
                                    '\$${collection[index]['price']}',
                                    style: MyStyles.bigBurbbletitle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.shopping_cart,
                                      size: 25,
                                    ),
                                  )
                                ],
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
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        childAspectRatio: 0.7,
      ),
    );
  }
}
