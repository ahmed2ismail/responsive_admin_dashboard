import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> allExpensesItems = [
    AllExpensesItemModel(
      iconImage: AppAssets.balance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      iconImage: AppAssets.income,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      iconImage: AppAssets.expenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItems[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItems[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItems[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
    // Row(
    //   // allExpensesItems.map((item) => Expanded(child: AllExpensesItem(allExpensesItemModel: item)),).toList
    //   children: allExpensesItems.asMap().entries.map((entry) {
    //     final int index = entry.key;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedIndex = index;
    //           });
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpensesItem(
    //             allExpensesItemModel: entry.value,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }
}
