import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/income_model.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex =
      -1; // عملتها -1 عشان في البداية مش بيكون فيه سكشن تم اختياره او الوقوف عليه بالماوس
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1, // ليكون مربعا تماماً
            child: PieChart(_getChartData()),
          ),
        ),
      ],
    );
  }

  PieChartData _getChartData() {
    return PieChartData(
      // هنعمل الانيميشن
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, pieTouchResponse) {
          // عن طريق ال pieTouchResponse اقدر اجيب ال index بتاع ال item اللي انا واقف عليها
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      // titleSunbeamLayout: false, // لا نريد توزيع العناوين بشكل شعاعي تلقائي من المكتبة
      sectionsSpace: 0, // (ليكون ملتصقاً) لا نريد مسافات بين الأجزاء
      // لرسم الاجزاء sections
      sections: incomeDetails.map((item) {
        return PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0
              ? 1.5
              : activeIndex == 1
              ? 2.5
              : activeIndex == 2
              ? 1.5
              : activeIndex == 3
              ? 1.7
              : null,
          title: activeIndex == incomeDetails.indexOf(item)
              ? item.title
              : item.value,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == incomeDetails.indexOf(item)
                ? null
                : AppColors.pureWhite,
          ),
          // تحويل النص (مثل "40%") إلى رقم عشري (40.0) عن طريق حذف علامة % ثم التحويل الي النسبة اللي الشارت هياخدها لكل سكشن
          value: double.parse(item.value.replaceAll('%', '')),
          color: item.color, // لون الجزء المقتطع من الدائرة بناءً على الموديل
          radius: activeIndex == incomeDetails.indexOf(item)
              ? 45
              : 35, // سمك الدائرة
        );
      }).toList(),
    );
  }
}
