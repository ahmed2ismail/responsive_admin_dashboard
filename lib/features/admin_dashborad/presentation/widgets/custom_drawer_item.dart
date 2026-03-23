import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/active_and_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
      secondChild: ActiveDrawerItem(drawerItemModel: drawerItemModel),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
