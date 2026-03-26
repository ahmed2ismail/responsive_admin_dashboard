import 'dart:ui';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';

class IncomeModel {
  final String title, value;
  final Color color;

  const IncomeModel({
    required this.title,
    required this.value,
    required this.color,
  });
}

// قائمة البيانات
const List<IncomeModel> incomeDetails = [
  IncomeModel(
    title: 'Design service',
    value: '40%',
    color: AppColors.secondaryBlue,
  ),
  IncomeModel(
    title: 'Design product',
    value: '25%',
    color: AppColors.primaryBlue,
  ),
  IncomeModel(
    title: 'Product royalty',
    value: '20%',
    color: AppColors.darkBlue,
  ),
  IncomeModel(title: 'Other', value: '22%', color: AppColors.sandBeige),
];
