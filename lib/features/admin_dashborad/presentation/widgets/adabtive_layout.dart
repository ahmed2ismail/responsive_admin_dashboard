import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tabletBreakpoint) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktopBreakpoint) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
