import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuikInvoice()
            ],
          ),
        ),
      ],
    );
  }
}
