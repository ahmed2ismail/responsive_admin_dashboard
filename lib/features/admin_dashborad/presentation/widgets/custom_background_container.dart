import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? const EdgeInsets.all(20),
      decoration: AppStyles.whiteCardDecorationShadow,
      child: child,
    );
  }
}
