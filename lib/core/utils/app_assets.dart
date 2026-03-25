abstract class AppAssets {
  static const String _basePath = 'assets/images/';

  // أيقونات القائمة الجانبية (Sidebar)
  static const String dashboard = '${_basePath}dashboard.svg';
  static const String myTransactions = '${_basePath}my_transactions.svg';
  static const String statistics = '${_basePath}statistics.svg';
  static const String walletAccount = '${_basePath}wallet_account.svg';
  static const String myInvestments = '${_basePath}my_investments.svg';

  // أيقونات الإعدادات والخروج (Bottom Sidebar)
  static const String settings = '${_basePath}settings.svg';
  static const String logout = '${_basePath}logout.svg';

  // أيقونات البطاقة والماليات (Cards & Finances)
  static const String myCardsvg = '${_basePath}card_background.svg'; // أيقونة البطاقة البنكية
  static const String myCardpng = '${_basePath}card_background.png'; // أيقونة البطاقة البنكية
  static const String balance = '${_basePath}balance.svg'; // أيقونة ال balance(All Expenses)
  static const String income = '${_basePath}income.svg';   // سهم الدخل
  static const String expenses = '${_basePath}expenses.svg'; // سهم المصروفات

  // أيقونات إضافية تظهر في الـ Dashboard
  static const String gallery = '${_basePath}gallery.svg'; // الموجودة في Quick Invoice
  static const String arrowDown = '${_basePath}arrow_down.svg';
  
  // صورة المستخدم (Avatar) - غالباً تكون PNG
  static const String avatar1 = '${_basePath}avatar_1.svg';
  static const String avatar2 = '${_basePath}avatar_2.svg';
  static const String avatar3 = '${_basePath}avatar_3.svg';
}
