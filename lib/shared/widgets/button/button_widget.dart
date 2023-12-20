// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';

class ButtonWidget extends StatelessWidget {
  final String titleButton;
  final bool isYellowDark;
  final VoidCallback? onPressed;
  const ButtonWidget({
    Key? key,
    required this.titleButton,
    this.isYellowDark = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isYellowDark ? AppColors.yellowDark : AppColors.purpleDark,
        minimumSize: Size(size.width, 46),
        padding: const EdgeInsets.all(12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        disabledBackgroundColor: isYellowDark ? AppColors.yellowDark.withOpacity(0.4) : AppColors.purpleDark.withOpacity(0.4),
      ), 
      child: Text(
        titleButton,
        style: AppTypograph.textBoldSM,
      ),
    );
  }
}
