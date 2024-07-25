import 'package:flutter/material.dart';

import 'package:responsive_dash_board/models/expenses_card_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesCardInfo extends StatelessWidget {
  const AllExpensesCardInfo({
    super.key,
    required this.expensesCardModel,
    required this.isUnique,
  });

  final ExpensesCardModel expensesCardModel;
  final bool isUnique;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(expensesCardModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: isUnique ? Colors.white : const Color(0xFF064061),
            )),
        const SizedBox(
          height: 8,
        ),
        Text(expensesCardModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: isUnique ? Colors.white : const Color(0xFFAAAAAA),
            )),
        const SizedBox(
          height: 16,
        ),
        Text(expensesCardModel.price.toString(),
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: isUnique ? Colors.white : const Color(0xFF4EB7F2),
            )),
      ],
    );
  }
}
