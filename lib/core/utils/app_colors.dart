import 'dart:ui';

abstract class AppColors {
  // الألوان الأساسية (Primary & Secondary)
  static const Color primaryBlue = Color(0xFF4EB7F2); // الأزرق السماوي المشرق
  static const Color darkBlue = Color(
    0xFF064061,
  ); // الكحلي العميق (للنصوص الأساسية)
  static const Color secondaryBlue = Color(0xFF208CC8); // درجة أزرق إضافية

  // ألوان الحالة (Status Colors)
  static const Color successGreen = Color(0xFF7DD97B); // أخضر للنجاح/مكتمل
  static const Color coralOrange = Color(
    0xFFF3735E,
  ); // برتقالي مرجاني (تنبيه أو حذف)
  static const Color sandBeige = Color(0xFFE2DECD); // بيج رملي

  // درجات الأبيض والرمادي (Backgrounds & Borders)
  static const Color pureWhite = Color(0xFFFFFFFF);
  static const Color backgroundWhite = Color(
    0xFFF7F9FA,
  ); // خلفية التطبيق الهادئة
  static const Color grey = Color(0xFFC4C4C4);
  static const Color lightGrey = Color(0xFFF1F1F1); // خلفية خفيفة جداً
  static const Color borderGrey = Color(0xFFE8E8E8); // للحدود (Borders)
  static const Color textGrey = Color(0xFFAAAAAA); // للنصوص الثانوية
  static const Color fillGrey = Color(0xFFFAFAFA);

  // ألوان مع شفافية (Opacity) كما وردت في التصميم
  static Color white14Opacity = const Color(0xFFFFFFFF).withValues(alpha: 0.14);
  static Color white10Opacity = const Color(0xFFFFFFFF).withValues(alpha: 0.10);
  static Color black4Opacity = const Color(0x00000000).withValues(alpha: 0.04);
}
