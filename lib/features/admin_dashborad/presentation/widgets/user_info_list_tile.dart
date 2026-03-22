import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String image, title, subTitle;
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundWhite,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image), // أو Image.asset لو كانت PNG
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subTitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
