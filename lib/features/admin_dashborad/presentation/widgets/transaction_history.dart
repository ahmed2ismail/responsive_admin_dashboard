import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/transaction_history_item_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/transaction_history_header.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/transaction_history_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  static const List<TransactionHistoryItemModel> transactionHistoryItems = [
    TransactionHistoryItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      type: TransactionType.withdrawal,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      type: TransactionType.deposit,
    ),
    TransactionHistoryItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      type: TransactionType.deposit,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 16),
        // قائمة المعاملات
        // اول طريقة
        ...transactionHistoryItems.map(
          (e) => TransactionHistoryItem(transactionHistoryItemModel: e),
        ),
        // وثاني طريقة
        // ...List.generate(
        //   transactionHistoryItems.length,
        //   (index) => TransactionHistoryItem(
        //     transactionHistoryItemModel: transactionHistoryItems[index],
        //   ),
        // ),
        //والتالته هي ال ListView.builder والتلاته صح
      ],
    );
  }
}
