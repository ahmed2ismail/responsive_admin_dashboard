import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_button.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_drop_down_field.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: 'Customer Name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: 'Item Name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomDropDownField()),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textColor: AppColors.primaryBlue,
                backgroundColor: AppColors.pureWhite,
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
