import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_assets.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/features/admin_dashborad/presentation/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> userInfoList = [
    UserInfoModel(
      image: AppAssets.avatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: AppAssets.avatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: AppAssets.avatar3,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // لو عندي عدد قليل من العناصر اللي بت scroll هستخدم:
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            ...userInfoList.map(
              (item) =>
                  IntrinsicWidth(child: UserInfoListTile(userInfoModel: item)),
            ),
          ],
        ),
      ),
    );
    // لو عندي عدد كبير من العناصر اللي بت scroll هستخدم:
    // SizedBox(
    //   height: 90.h, // تحديد ارتفاع ثابت للـ ListView لتجنب الـ unbounded height
    //   child: ScrollConfiguration(
    //     behavior: const MaterialScrollBehavior().copyWith(
    //       dragDevices: {
    //         PointerDeviceKind.touch,
    //         PointerDeviceKind.mouse,
    //         PointerDeviceKind.trackpad,
    //       },
    //     ),
    //     child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: userInfoList.length,
    //       itemBuilder: (context, index) => IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: userInfoList[index]),
    //       ),
    //     ),
    //   ),
    // );
  }
}
