// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery/shared/utils/price_utils.dart';
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/widgets/tag_info_categories/tag_info_categories_widget.dart';

class CardStandingCoffeeWidget extends StatelessWidget {
  final String urlPathCoffee;
  final String categoryCoffee;
  final String titleCoffee;
  final String descriptionCoffee;
  final double priceCoffee;
  final VoidCallback onTap;
  const CardStandingCoffeeWidget({
    Key? key,
    required this.urlPathCoffee,
    required this.categoryCoffee,
    required this.titleCoffee,
    required this.descriptionCoffee,
    required this.priceCoffee,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 166.4,
          height: 204.4,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: AppColors.gray200,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.8),
              topRight: Radius.circular(28.8),
              bottomLeft: Radius.circular(28.8),
              bottomRight: Radius.circular(4.8),
            ),
            border: Border.all(
              width: 0.8,
              color: AppColors.gray300,
              style: BorderStyle.solid,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6.4,
                offset: const Offset(0, 1.6),
              )
            ]
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0, -1.8),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    urlPathCoffee, 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    TagInfoCategoriesWidget(infoCategory: categoryCoffee),
                    const SizedBox(height: 2,),
                    Text(
                      titleCoffee, 
                      style: AppTypograph.titleMD,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      descriptionCoffee,
                      style: AppTypograph.textXXS,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      text: "R\$ ",
                      style: AppTypograph.textXXSYellowDark,
                      children: [
                        TextSpan(
                          text: PriceUtils.convertPriceToBR(priceCoffee),
                          style: AppTypograph.titleMDYellowDark,
                        )
                      ]
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
