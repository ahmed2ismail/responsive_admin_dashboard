import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import '/../features/admin_dashborad/presentation/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveAdminDashBoard());
}

class ResponsiveAdminDashBoard extends StatelessWidget {
  const ResponsiveAdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResponsiveAdminDashBoard',
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratAlternatesTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.backgroundWhite),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundWhite,
      ),
      home: const DashboardView(),
    );
  }
}