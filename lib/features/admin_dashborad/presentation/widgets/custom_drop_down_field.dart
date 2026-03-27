import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'USD',
      'EUR',
      'EGP',
    ]; // عرفنا القائمة هنا لتسهيل بناء العناصر
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Item mount', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          icon: const SizedBox.shrink(), // إخفاء الأيقونة الافتراضية الموجودة على اليمين
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            fillColor: AppColors.fillGrey,
            filled: true,
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(AppColors.primaryBlue),
          ),
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          selectedItemBuilder: (context) {
            // 2. تصميم العنصر بعد اختياره ليكون النص وبجواره السهم
            return items.map((e) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e, style: AppStyles.styleRegular16(context)),
                  const SizedBox(width: 12),
                  SvgPicture.asset(
                    AppAssets.arrowDown,
                    height: 24,
                    width: 24,
                  ),
                ],
              );
            }).toList();
          },
          onChanged: (value) {},
          hint: Row(
            // 3. تصميم الـ Hint المبدئي ليكون النص وبجواره السهم
            mainAxisSize: MainAxisSize.min, // للحفاظ على حجم الـ Row صغيراً
            children: [
              Text(
                'USD',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: AppColors.textGrey,
                ),
              ),
              const SizedBox(width: 12), // يمكنك تعديل المسافة هنا
              SvgPicture.asset(AppAssets.arrowDown, height: 24, width: 24),
            ],
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