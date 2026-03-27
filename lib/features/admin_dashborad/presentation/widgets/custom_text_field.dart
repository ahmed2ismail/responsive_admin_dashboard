import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String title; // عنوان الحقل (مثال: Customer Name)
  final String hint; // النص المساعد داخل الحقل

  const CustomTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // العنوان فوق الـ TextField
        Text(
          title,
          style: AppStyles.styleMedium16(context), // نستخدم ستايل متوسط الحجم
        ),
        const SizedBox(height: 12), // مسافة بين العنوان والحقل
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(context).copyWith(
              color: AppColors.textGrey,
            ),
            fillColor: AppColors.fillGrey,
            filled: true,
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(AppColors.primaryBlue),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? AppColors.fillGrey),
    );
  }
}
