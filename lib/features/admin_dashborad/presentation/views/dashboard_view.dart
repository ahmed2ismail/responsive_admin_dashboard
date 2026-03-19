import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/adabtive_layout.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayout(
        mobileLayout: (BuildContext context) => SizedBox(),
        tabletLayout: (BuildContext context) => SizedBox(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
