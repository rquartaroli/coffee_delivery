// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class AddOrSubtractItemWidget extends StatelessWidget {
  final VoidCallback addItem;
  final VoidCallback subtractItem;
  final int itemQuantity;
  const AddOrSubtractItemWidget({
    Key? key,
    required this.addItem,
    required this.subtractItem,
    required this.itemQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.gray300,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: subtractItem, 
            icon: const Icon(
              Icons.remove,
              color: AppColors.purple,
              size: 20,
            )
          ),
          const SizedBox(width: 4,),
          Text(
            itemQuantity.toString(),
            style: AppTypograph.textMDGray900,
          ),
          const SizedBox(width: 4,),
          IconButton(
            onPressed: addItem, 
            icon: const Icon(
              Icons.add,
              color: AppColors.purple,
              size: 20,
            )
          ),
        ],
      ),
    );
  }
}
