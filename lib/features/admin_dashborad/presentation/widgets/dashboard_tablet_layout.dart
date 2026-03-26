import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column 1: Drawer
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),

        // Column 2: Main Content (All Expenses, Quick Invoice, My Cards, Income)
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashboardMobileLayout(),
          ),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
