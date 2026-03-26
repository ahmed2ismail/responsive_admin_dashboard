import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_section_header.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IncomeSectionHeader(),
          const SizedBox(height: 16),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
