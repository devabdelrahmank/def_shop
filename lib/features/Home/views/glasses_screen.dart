import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wgbstory_payment/core/color.dart';
import 'package:wgbstory_payment/core/constant.dart';

class GlassesScreen extends StatelessWidget {
  const GlassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: watches.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      crossAxisSpacing: 10,
      mainAxisSpacing: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.4, color: MyColor.primaryDeebpurple),
              borderRadius: const BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Column(
              children: [
                if (watches[index]['imageUrl'] != null)
                  Image.network(watches[index]['imageUrl'], fit: BoxFit.fill),
                if (watches[index]['imageUrl'] == null)
                  const CircularProgressIndicator(),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: MyColor.primaryDeebpurple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        watches[index]['name'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "${watches[index]['price']} \$",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
