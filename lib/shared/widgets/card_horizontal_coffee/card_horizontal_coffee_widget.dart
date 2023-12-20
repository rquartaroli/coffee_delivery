// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery/shared/utils/price_utils.dart';
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class CardHorizontalCoffeeWidget extends StatelessWidget {
  final String urlPathCoffee;
  final String titleCoffee;
  final String descriptionCoffee;
  final double priceCoffee;
  final VoidCallback onTap;
  const CardHorizontalCoffeeWidget({
    Key? key,
    required this.urlPathCoffee,
    required this.titleCoffee,
    required this.descriptionCoffee,
    required this.priceCoffee, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(6),
        topRight: Radius.circular(36),
        bottomLeft: Radius.circular(36),
        bottomRight: Radius.circular(6),
      ),
      child: Container(
        width: 311,
        height: 120,
        padding: const EdgeInsets.only(
          top: 16,
          right: 16,
          left: 8,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          color: AppColors.gray200,
          border: Border.all(
            color: AppColors.gray300,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(36),
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(6),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            )
          ]
        ),
        child: Row(
          children: [
            SizedBox(
              width: 96,
              height: 96,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -28,
                    left: 0,
                    child: SizedBox(
                      width: 96,
                      height: 96,
                      child: Image.asset(
                        urlPathCoffee, 
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titleCoffee, style: AppTypograph.titleSM,),
                    Text(
                      descriptionCoffee,
                      style: AppTypograph.textXS,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text.rich(TextSpan(
                      text: "R\$ ",
                      style: AppTypograph.textSMYellowDark,
                      children: [
                        TextSpan(
                          text: PriceUtils.convertPriceToBR(priceCoffee),
                          style: AppTypograph.titleMDYellowDark,
                        )
                      ]
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
