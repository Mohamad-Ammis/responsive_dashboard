import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_body.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(child: AllExpensesBody());
  }
}
