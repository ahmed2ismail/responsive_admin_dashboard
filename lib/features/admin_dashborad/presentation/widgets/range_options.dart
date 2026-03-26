import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.borderGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Monthly', style: AppStyles.styleMedium16),
            const SizedBox(width: 18),
            SvgPicture.asset(AppAssets.arrowDown, height: 24, width: 24),
          ],
        ),
      ),
    );
  }
}
