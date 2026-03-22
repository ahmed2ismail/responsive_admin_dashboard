import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drawer_item.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/drawer_item_model.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key, required this.drawerItems});

  final List<DrawerItemModel> drawerItems;

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
                // print(activeIndex);
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: CustomDrawerItem(
              drawerItemModel: widget.drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
