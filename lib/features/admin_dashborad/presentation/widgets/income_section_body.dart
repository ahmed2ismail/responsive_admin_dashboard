import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/detailed_income_chart.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_chart.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_details_list.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child:
          SizeConfig.screenWidth >= SizeConfig.desktopBreakpoint &&
              SizeConfig.screenWidth < 1750
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: const DetailedIncomeChart(),
            )
          : const Row(
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
