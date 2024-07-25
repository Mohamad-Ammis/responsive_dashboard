import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/user_info_card.dart';

class LatestTransactionsList extends StatelessWidget {
  const LatestTransactionsList({
    super.key,
  });
  final List<UserInfoModel> usersList = const [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Mohamad Ammis',
        subTitle: "Ammis@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Mohamad Ammis',
        subTitle: "Ammis@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Mohamad Ammis',
        subTitle: "Ammis@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Mohamad Ammis',
        subTitle: "Ammis@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Mohamad Ammis',
        subTitle: "Ammis@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: usersList
            .map((e) => IntrinsicWidth(child: UserInfoCard(userInfoModel: e)))
            .toList(),
      ),
    );
    /* SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: usersList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoCard(
                userInfoModel: usersList[index],
              ),
            );
          }),
    ); */
  }
}
