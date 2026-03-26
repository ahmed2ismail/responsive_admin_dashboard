import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  fontSize: 20,
  fontWeight: FontWeight.w600,
  fontFamily: 'Montserrat', // يجب أن يطابق الاسم المعرف في pubspec.yaml
);
*/

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

  // ستايل العناوين المتوسطة (مثل اسم المستخدم في البطاقة)
  static final TextStyle styleMedium20 = GoogleFonts.montserrat(
    color: AppColors.darkBlue,
    fontSize: 20,
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
        color: AppColors.blackShadow4Opacity,
        blurRadius: 40,
        offset: const Offset(0, 4),
      ),
    ],
  );
}
