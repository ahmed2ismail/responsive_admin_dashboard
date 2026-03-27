import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 255,
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.21,
        decoration: ShapeDecoration(
          color: AppColors.primaryBlue,
          image: DecorationImage(
            image: AssetImage(AppAssets.myCardpng),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Name card'),
              titleTextStyle: AppStyles.styleRegular16(
                context,
              ).copyWith(color: AppColors.pureWhite),
              subtitle: Text('Syah Bandi'),
              subtitleTextStyle: AppStyles.styleMedium16(
                context,
              ).copyWith(color: AppColors.pureWhite, fontSize: 20),
              trailing: SvgPicture.asset(AppAssets.gallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24(
                    context,
                  ).copyWith(color: AppColors.pureWhite),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: AppColors.pureWhite),
                ),
              ),
            ),
            // مسافة ثابتة في الأسفل لدفع المحتوى للأعلى قليلاً عن الحافة
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}
