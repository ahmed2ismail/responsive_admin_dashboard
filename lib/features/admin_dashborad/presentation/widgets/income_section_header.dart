import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        RangeOptions(),
      ],
    );
  }
}
