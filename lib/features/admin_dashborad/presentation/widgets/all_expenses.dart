import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_header.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
