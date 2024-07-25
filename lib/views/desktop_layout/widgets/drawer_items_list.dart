import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  //final controller = Get.put(ActiveDrawerItemContrller());
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != index) {
                  selectedIndex = index;

                  print(selectedIndex);
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: drawerItems[index],
                isActive: selectedIndex == index ? true : false,
              ),
            ),
          );
        });
  }
}
