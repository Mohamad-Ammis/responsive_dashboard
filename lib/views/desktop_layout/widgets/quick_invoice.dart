import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/latest_transactions.dart';
import 'package:responsive_dash_board/views/desktop_layout/widgets/quick_invoice_header.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [QuickInvoiceHeader(), LatestTransactions()],
      ),
    );
  }
}
