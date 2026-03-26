import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconImage),
      title: Text(drawerItemModel.title, style: AppStyles.styleRegular16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconImage),
      title: Text(drawerItemModel.title, style: AppStyles.styleBold16),
      trailing: Container(width: 3.27, color: AppColors.primaryBlue),
    );
  }
}
