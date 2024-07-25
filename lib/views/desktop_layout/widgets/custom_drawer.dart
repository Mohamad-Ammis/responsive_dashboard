import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/drawer_items_list.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/inActiveDrawerItem.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/user_info_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoCard(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Mohamad Ammis',
                  subTitle: 'Ammis@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(
                  child: SizedBox(
                height: 20,
              )),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: "Setting system")),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: "Logout account")),
              SizedBox(
                height: 48,
              )
            ]),
          )
        ],
      ),
    );
  }
}
