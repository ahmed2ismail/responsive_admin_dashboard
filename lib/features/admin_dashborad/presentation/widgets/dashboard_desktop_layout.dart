import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(child: Container()),
      ],
    );
  }
}
