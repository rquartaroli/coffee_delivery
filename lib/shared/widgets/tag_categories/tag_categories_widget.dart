// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class TagCategoriesWidget extends StatelessWidget {
  final String category;
  final bool isActive;
  final VoidCallback onTap;
  const TagCategoriesWidget({
    Key? key,
    required this.category,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: isActive ? AppColors.purple : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.purple,
            width: 1,
          )
        ),
        child: Text(
          category,
          style: isActive ? AppTypograph.tagTitleWhite : AppTypograph.tagTitle,
        )
      ),
    );
  }
}
