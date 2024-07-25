import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_card_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/all_expenses_card.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({
    super.key,
  });

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  final List<ExpensesCardModel> expensesCardItems = const [
    ExpensesCardModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r'$20,123'),
    ExpensesCardModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r'$20,123'),
    ExpensesCardModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r'$20,123'),
  ];
  int itemIndex = 0;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: expensesCardItems.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != index) {
                  selectedIndex = index;
                  print(selectedIndex);
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesCard(
                  expensesCardModel: item,
                  selected: selectedIndex == index ? true : false),
            ),
          ),
        );
      } else if (index == 0) {
        return Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex != index) {
                      selectedIndex = index;
                      print(selectedIndex);
                    }
                  });
                },
                child: AllExpensesCard(
                    expensesCardModel: item,
                    selected: selectedIndex == index ? true : false)));
      } else {
        return Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex != index) {
                      selectedIndex = index;
                      print(selectedIndex);
                    }
                  });
                },
                child: AllExpensesCard(
                    expensesCardModel: item,
                    selected: selectedIndex == index ? true : false)));
      }
    }).toList());
  }
}
