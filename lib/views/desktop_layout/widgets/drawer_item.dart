import 'package:flutter/material.dart';

import 'package:responsive_dash_board/models/drawer_item.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/activeDrawerItem.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/inActiveDrawerItem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return !isActive
        ? InActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : ActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
