import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_list.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensesList()
      ],
    );
  }
}
