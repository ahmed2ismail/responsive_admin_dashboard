import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        const SizedBox(height: 24),
        QuickInvoice(),
        const SizedBox(height: 32),
      ],
    );
  }
}
