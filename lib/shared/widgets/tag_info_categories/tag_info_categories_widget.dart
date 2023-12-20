// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class TagInfoCategoriesWidget extends StatelessWidget {
  final String infoCategory;
  final bool isCoffeeVariant;
  const TagInfoCategoriesWidget({
    Key? key,
    required this.infoCategory,
    this.isCoffeeVariant = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 
      isCoffeeVariant ? 
      const EdgeInsets.symmetric(horizontal: 12, vertical: 6) 
      : 
      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isCoffeeVariant ? AppColors.gray800 : AppColors.purpleLight,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        infoCategory,
        style: isCoffeeVariant ? AppTypograph.tagTitleWhite : AppTypograph.tagTitleXS,
      )
    );
  }
}
