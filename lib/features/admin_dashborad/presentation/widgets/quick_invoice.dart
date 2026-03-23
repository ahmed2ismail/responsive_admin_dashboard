import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/latest_transaction.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/quick_invoice_form.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: AppColors.lightGrey, thickness: 1),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
