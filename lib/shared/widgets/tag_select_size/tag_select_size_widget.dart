// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class TagSelectSizeWidget extends StatelessWidget {
  final String sizeInfo;
  final bool isActive;
  final VoidCallback onTap;
  const TagSelectSizeWidget({
    Key? key,
    required this.sizeInfo,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onTap,
      child: Container(
              width: 98.33,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: isActive ? AppColors.white : AppColors.gray300,
                border: isActive ? 
                Border.all(
                  width: 1,
                  color: AppColors.purple
                )
                :
                Border.all(
                  width: 1,
                  color: AppColors.gray300
                ),
              ),
              child: Center(
                    child: Text(
                      sizeInfo,
                      style: isActive ? AppTypograph.textSMPurpleBold : AppTypograph.textSMGray700,
                    ),
                  ),
            ),
    );
  }
}
