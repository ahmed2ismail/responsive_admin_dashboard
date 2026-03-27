import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/income_model.dart';

// ويدجت بسيطة تعرض النقطة الملونة، النص، والنسبة:
class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: incomeDetails
          .map(
            (item) => Expanded(
              child: ListTile(
                leading: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: item.color,
                    shape: BoxShape.circle,
                  ),
                ),
                title: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    item.title,
                    style: AppStyles.styleRegular16(context),
                  ),
                ),
                trailing: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    item.value,
                    style: AppStyles.styleMedium16(
                      context,
                    ).copyWith(color: AppColors.primaryBlue),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
