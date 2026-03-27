import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/user_info_list_tile.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', iconImage: AppAssets.dashboard),
    DrawerItemModel(
      title: 'My Transactions',
      iconImage: AppAssets.myTransactions,
    ),
    DrawerItemModel(title: 'Statistics', iconImage: AppAssets.statistics),
    DrawerItemModel(
      title: 'Wallet Account',
      iconImage: AppAssets.walletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      iconImage: AppAssets.myInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      padding: EdgeInsets.only(left: 28, right: 20),
      color: AppColors.pureWhite,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 40, right: 47, top: 50, bottom: 17),
              height: 53,
              width: 193,
              color: AppColors.grey,
              child: SvgPicture.asset(AppAssets.gallery),
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: AppAssets.avatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 28)),
          CustomDrawerListView(drawerItems: drawerItems),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Flexible(fit: FlexFit.loose, child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Settings',
                    iconImage: AppAssets.settings,
                  ),
                ),
                SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout',
                    iconImage: AppAssets.logout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
