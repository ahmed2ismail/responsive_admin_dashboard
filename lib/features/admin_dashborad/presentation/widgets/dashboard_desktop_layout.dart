import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/my_cards_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column 1: Drawer
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),

        Expanded(
          flex: 3,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Column 2: Main Content (All Expenses, Quick Invoice)
                      const Expanded(
                        flex: 2,
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                      const SizedBox(width: 24),
                      // Column 3: Side Content (My Cards, TransactionHistory, Income)
                      Expanded(
                        child: Column(
                          children: [
                            const MyCardsAndTransactionHistorySection(),
                            const IncomeSection(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(width: 32),
      ],
    );
  }
}
