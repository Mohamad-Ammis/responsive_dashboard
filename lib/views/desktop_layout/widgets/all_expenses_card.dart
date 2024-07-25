import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_card_model.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_card_header.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_card_info.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard({
    super.key,
    required this.expensesCardModel,
    required this.selected,
  });
  final ExpensesCardModel expensesCardModel;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      decoration: BoxDecoration(
          color: selected ? const Color(0xFF4EB7F2) : Colors.white,
          border: Border.all(width: 1, color: const Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            image: expensesCardModel.image,
            selected: selected,
          ),
          const SizedBox(
            height: 30,
          ),
          AllExpensesCardInfo(
            expensesCardModel: expensesCardModel,
            isUnique: selected,
          )
        ],
      ),
    );
  }
}
