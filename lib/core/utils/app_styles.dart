import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart'; // تأكد من استدعاء كلاس الألوان اللي عملناه

abstract class AppStyles {
  // 1. ستايل العناوين الكبيرة (مثل All Expenses, Quick Invoice)
  static final TextStyle styleSemiBold20 = GoogleFonts.montserrat(
    color: AppColors.darkBlue,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // 2. ستايل القائمة الجانبية (Sidebar Items)
  static final TextStyle styleRegular16 = GoogleFonts.montserrat(
    color: AppColors.darkBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  // ستايل العنصر المختار في القائمة (Active Sidebar Item)
  static final TextStyle styleBold16 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  // 3. ستايل الأرقام والمبالغ (مثل $20,129)
  static final TextStyle styleSemiBold24 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  // 4. ستايل النصوص الثانوية الرمادية (مثل التاريخ أو الإيميل)
  static final TextStyle styleRegular14 = GoogleFonts.montserrat(
    color: AppColors.textGrey,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // 5. ستايل العناوين المتوسطة (مثل Transaction History)
  static final TextStyle styleMedium16 = GoogleFonts.montserrat(
    color: AppColors.darkBlue,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  // 6. ستايل المدخلات (Text Fields Hint)
  static final TextStyle styleRegular12 = GoogleFonts.montserrat(
    color: AppColors.textGrey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  //7. ستايل أسماء المستخدمين أو العناوين المتوسطة البارزة
  static final TextStyle styleSemiBold16 = GoogleFonts.montserrat(
    color: AppColors.darkBlue,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // 8. ستايل النصوص داخل الأزرار (Buttons)
  static final TextStyle styleSemiBold18 = GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static BoxDecoration whiteCardDecorationShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF000000).withValues(alpha: 0.04),
        blurRadius: 40,
        offset: const Offset(0, 4),
      ),
    ],
  );
}
