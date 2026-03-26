import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_chart.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_details_list.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(fit: FlexFit.loose, child: IncomeChart()), // الدائرة
          SizedBox(width: 40),
          Flexible(
            flex: 3,
            fit: FlexFit.loose,
            child: IncomeDetailsList(),
          ), // التفاصيل
        ],
      ),
    );
  }
}
