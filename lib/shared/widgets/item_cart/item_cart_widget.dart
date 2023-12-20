// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery/shared/utils/price_utils.dart';
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/widgets/add_or_subtract_item/add_or_subtract_item_widget.dart';

class ItemCartWidget extends StatelessWidget {
  final String assetImagePath;
  final String titleItem;
  final String sizeItem;
  final double priceItem;
  final int quantityItem;
  final VoidCallback subtractAction;
  final VoidCallback addAction;
  final VoidCallback deleteAction;
  const ItemCartWidget({
    Key? key,
    required this.assetImagePath,
    required this.titleItem,
    required this.sizeItem,
    required this.priceItem,
    required this.quantityItem,
    required this.subtractAction,
    required this.addAction,
    required this.deleteAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: const BoxDecoration(
        color: AppColors.gray100,
        border: Border(
          bottom: BorderSide(width: 1, color: AppColors.gray300),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: Image.asset(assetImagePath),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleItem,
                style: AppTypograph.textMDGray900,
              ),
              Text(
                sizeItem,
                style: AppTypograph.textSMGray600,
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  AddOrSubtractItemWidget(
                    addItem: addAction, 
                    subtractItem: subtractAction, 
                    itemQuantity: quantityItem
                  ),
                  const SizedBox(width: 8,),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.gray300,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: deleteAction,
                      color: AppColors.gray300,
                      icon: const Icon(
                        Icons.delete_outline,
                        color: AppColors.purple,
                        size: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Text.rich(TextSpan(
            text: "R\$",
            style: AppTypograph.titleSMGray900,
            children: [
              TextSpan(
                text: PriceUtils.convertPriceToBR(priceItem),
                style: AppTypograph.titleSMGray900,
              )
            ])
          ),
        ],
      ),
    );
  }
}
