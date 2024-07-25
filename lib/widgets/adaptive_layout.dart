import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout/desktop_layout.dart';
import 'package:responsive_dash_board/views/mobile_layout.dart';
import 'package:responsive_dash_board/views/tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return constraints.maxWidth < 600
          ? const MobileLayout()
          : constraints.maxWidth < 600
              ? const TabletLayout()
              : const DesktopLayout();
    });
  }
}
