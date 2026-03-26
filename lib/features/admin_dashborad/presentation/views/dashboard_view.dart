import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/adabtive_layout.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.menu, color: Colors.black, size: 32),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              title: Text(
                'Dashboard',
                style: AppStyles.styleSemiBold20.copyWith(
                  color: AppColors.secondaryBlue,
                ),
              ),
            )
          : null,
      body: AdabtiveLayout(
        mobileLayout: (BuildContext context) => const DashboardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
