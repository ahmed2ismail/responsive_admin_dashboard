import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/transaction_history_item_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  final TransactionHistoryItemModel transactionHistoryItemModel;

  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.fillGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            transactionHistoryItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            transactionHistoryItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(color: AppColors.textGrey),
          ),
        ),
        trailing: Text(
          transactionHistoryItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistoryItemModel.type == TransactionType.withdrawal
                ? AppColors.coralOrange // لو سحب
                : AppColors.successGreen, // لو إيداع (أي شيء آخر),
          ),
        ),
      ),
    );
  }
}
