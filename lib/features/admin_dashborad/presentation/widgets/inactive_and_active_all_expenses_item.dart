import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 16.r),
      decoration: ShapeDecoration(
        color: AppColors.pureWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(color: AppColors.borderGrey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(assetName: allExpensesItemModel.iconImage),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 16.r),
      decoration: ShapeDecoration(
        color: AppColors.primaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            assetName: allExpensesItemModel.iconImage,
            imageBackgroundColor: AppColors.white10Opacity,
            imageColor: AppColors.pureWhite,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: AppColors.pureWhite,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(color: AppColors.fillGrey),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
              color: AppColors.pureWhite,
            ),
          ),
        ],
      ),
    );
  }
}
