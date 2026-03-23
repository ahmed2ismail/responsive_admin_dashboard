import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                AllExpenses(),
                const SizedBox(height: 24),
                QuickInvoice(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
