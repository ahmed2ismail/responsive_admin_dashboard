import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String title; // عنوان الحقل (مثال: Customer Name)
  final String hint;  // النص المساعد داخل الحقل

  const CustomTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // العنوان فوق الـ TextField
        Text(
          title,
          style: AppStyles.styleMedium16, // نستخدم ستايل متوسط الحجم
        ),
        const SizedBox(height: 12), // مسافة بين العنوان والحقل
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.styleRegular16.copyWith(
              color: const Color(0xFFAAAAAA),
            ),
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(AppColors.primaryBlue),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? const Color(0xFFFAFAFA),
      ),
    );
  }
}
