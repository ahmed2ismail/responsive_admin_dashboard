import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_admin_dashboard/core/utils/responsive_font_size_with_scal_factor.dart';
import 'app_colors.dart';

/*
الفرق بين استخدام google_fonts package و تنزيل الخط بشكل يدوي في مجلد ال assets:
1. استخدام ملفات الخطوط محلياً:
بعد تحميل ملفات الـ .ttf ووضعتها في مجلد assets/fonts:
المميزات:
يعمل بدون إنترنت: الخط يظهر فوراً حتى لو كان المستخدم غير متصل بالشبكة عند أول تشغيل للتطبيق.
أداء أسرع قليلاً: لا يحتاج التطبيق لإجراء طلب HTTP لتحميل الخط من سيرفرات جوجل.
العيوب:
زيادة حجم التطبيق: كل ملف خط تضيفه يزيد من مساحة الـ APK أو الـ IPA النهائي.
إعداد يدوي: يجب عليك تعريف الخطوط يدوياً في ملف pubspec.yaml تحت قسم fonts ليتعرف عليها فلاتر.
2. استخدام باكدج google_fonts
المميزات:
سهولة تامة: لا تحتاج لتحميل ملفات أو تعديل الـ pubspec.yaml لكل خط؛ فقط اكتب GoogleFonts.montserrat().
حجم أصغر: التطبيق يحمل فقط الأوزان التي تستخدمها فعلياً من الإنترنت عند الحاجة.
العيوب:
يتطلب إنترنت: في أول مرة يفتح فيها المستخدم التطبيق، قد يظهر الخط الافتراضي للحظات حتى يكتمل تحميل خط جوجل (إلا إذا قمت بعمل "Bundling" للخطوط معها).
في حال الستخدام الخط اللذي تم تنزيله:
static const TextStyle styleSemiBold20 = TextStyle(
  color: AppColors.darkBlue,
  fontSize: getResponsiveFontSize(fontSize: 20),
  fontWeight: FontWeight.w600,
  fontFamily: 'Montserrat', // يجب أن يطابق الاسم المعرف في pubspec.yaml
);
*/

abstract class AppStyles {
  // 1. ستايل العناوين الكبيرة (مثل All Expenses, Quick Invoice)
  static TextStyle styleSemiBold20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.darkBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  // 2. ستايل القائمة الجانبية (Sidebar Items)
  static TextStyle styleRegular16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.darkBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  // ستايل العنصر المختار في القائمة (Active Sidebar Item)
  static TextStyle styleBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.primaryBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  // 3. ستايل الأرقام والمبالغ (مثل $20,129)
  static TextStyle styleSemiBold24(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.primaryBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  // 4. ستايل النصوص الثانوية الرمادية (مثل التاريخ أو الإيميل)
  static TextStyle styleRegular14(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.textGrey,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  // 5. ستايل العناوين المتوسطة (مثل Transaction History)
  static TextStyle styleMedium16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.darkBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  // ستايل العناوين المتوسطة (مثل اسم المستخدم في البطاقة)
  static TextStyle styleMedium20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.darkBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  // 6. ستايل المدخلات (Text Fields Hint)
  static TextStyle styleRegular12(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.textGrey,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  //7. ستايل أسماء المستخدمين أو العناوين المتوسطة البارزة
  static TextStyle styleSemiBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: AppColors.darkBlue,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  // 8. ستايل النصوص داخل الأزرار (Buttons)
  static TextStyle styleSemiBold18(BuildContext context) {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static BoxDecoration whiteCardDecorationShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: AppColors.blackShadow4Opacity,
        blurRadius: 40,
        offset: const Offset(0, 4),
      ),
    ],
  );
}