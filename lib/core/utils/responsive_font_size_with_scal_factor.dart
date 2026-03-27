import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

// بنشغل ال method دي في ال fontSize لكل الاستايلز اللي في AppStyles
double getResponsiveFontSize(
BuildContext context,
{required double fontSize}) {
  // double scaleFactor = getScaleFactor(context);
  // او :
  double width = MediaQuery.sizeOf(context).width;
  // لو ال context بتاع ال MediaQuery هيعملنا مشكلة وقت منيجي نشغل الكود فنقدر نشيله و هنجيب ال width عن طريق ال dispatcher
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalSize = dispatcher.views.first.physicalSize.width;
  // var devicePhysicalRatio = dispatcher.views.first.devicePixelRatio;
  // double width =
      // physicalSize /
      // devicePhysicalRatio; // دا ال width بتاع الشاشة ونفس اللي بيجي من ال MediaQuery

  double scaleFactor = width < SizeConfig.tabletBreakpoint
      ? width / 550
      : width < SizeConfig.desktopBreakpoint
      ? width / 1000
      : width / 1600;
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * .8; // (80% of size)
  double upperLimit = responsiveFontSize * 1.2; // (120% of size)
  // print('Base fontSize = $fontSize ## lowerLimit = $lowerLimit ## upperLimit = $upperLimit ## ResponsiveFontsize = $ResponsiveFontsize ## final fontSize = ${ResponsiveFontSize.clamp(lowerLimit,upperLimit)}')
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
  // .clamp --> بتاخد قيمتين اقل واكبر ولو المتغير بتاعي كان قيمة اصغر من الاقل بيتغير للاقل ولو كانت قيمته اكبر من الاكبر بيتغير للاكبر ولو كان حاجة بينهم بيفضل زي مهو
}

// method بديلة لل condition logic:
// double getScaleFactor(BuildContext context) {
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < 600) {
//     return width / 400;
//   } else if (width < 900) {
//     return width / 700;
//   } else {
//     return width / 1000;
//   }
// }
