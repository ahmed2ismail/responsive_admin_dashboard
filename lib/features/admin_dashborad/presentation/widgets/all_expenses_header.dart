import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20(context),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        RangeOptions(),
      ],
    );
  }
}
