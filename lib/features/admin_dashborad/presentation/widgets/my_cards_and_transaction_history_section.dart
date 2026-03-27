import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/my_cards_section.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const MyCardsSection(),
          const Divider(height: 40, color: AppColors.lightGrey),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
