import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/my_cards_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(width: 32),
          CustomBackgroundContainer(child: MyCardsSection()),
          SizedBox(width: 32),
          Flexible(fit: FlexFit.loose, child: IncomeSection()),
        ],
      ),
    );
  }
}
