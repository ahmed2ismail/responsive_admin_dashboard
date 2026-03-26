import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/my_cards_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column 1: Drawer
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),

        // Column 2: Main Content (All Expenses, Quick Invoice)
        const Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        const SizedBox(width: 24),

        // Column 3: Side Content (My Cards, Income)
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40),
                  CustomBackgroundContainer(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const MyCardsSection(),
                        const Divider(height: 40, color: AppColors.lightGrey),
                        const TransactionHistory(),
                      ],
                    ),
                  ),
                  const IncomeSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
