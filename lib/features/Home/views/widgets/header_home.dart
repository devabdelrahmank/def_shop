import 'package:flutter/material.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/spacing.dart';
import 'package:wgbstory_payment/core/styles.dart';
import 'package:wgbstory_payment/core/widget/my_text_field.dart';
import 'package:wgbstory_payment/features/Home/views/widgets/horizontal_list.dart';

class HeaderHome extends StatelessWidget {
  final TextEditingController controllerSearch = TextEditingController();

  HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20),
        MyTextField(
          onTap: () {},
          valeditor: (val) {
            return;
          },
          text: 'Search Product Name...',
          controller: controllerSearch,
          borderRadius: 30,
          textAlign: TextAlign.left,
          suffix: const Icon(
            Icons.search,
            color: MyColor.primaryDeebpurple,
            size: 30,
          ),
        ),
        verticalSpace(20),
        const Text('Categories', style: MyStyles.bigBurbbletitle),
        verticalSpace(10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const CategoriesHorizontalList(
                text: "Watches",
                image:
                    "https://i.etsystatic.com/43696812/r/il/3ed85f/5904470180/il_1140xN.5904470180_prx1.jpg",
              ),
              horizontalSpace(10),
              const CategoriesHorizontalList(
                text: "Glasses",
                image:
                    'https://assets.glasses.com/is/image/Glasses/8056597188630__002.png?impolicy=GL_parameters_transp_clone1440&width=1440',
              ),
              horizontalSpace(10),
              const CategoriesHorizontalList(
                text: "Bags",
                image:
                    'https://i.pinimg.com/564x/2f/26/db/2f26dbcee251c845a5c7ac1879d687c4.jpg',
              ),
            ],
          ),
        )
      ],
    );
  }
}
