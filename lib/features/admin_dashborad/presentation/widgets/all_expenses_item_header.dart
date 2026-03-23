import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.assetName,
    this.imageBackgroundColor,
    this.imageColor,
  });

  final String assetName;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: imageBackgroundColor ?? AppColors.fillGrey,
          radius: 32,
          child: SvgPicture.asset(
            assetName,
            colorFilter: ColorFilter.mode(
              imageColor ?? AppColors.primaryBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.57,
          child: SvgPicture.asset(
            AppAssets.arrowDown,
            height: 24.r,
            width: 24.r,
            colorFilter: ColorFilter.mode(
              imageColor == null ? AppColors.darkBlue : AppColors.pureWhite,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
