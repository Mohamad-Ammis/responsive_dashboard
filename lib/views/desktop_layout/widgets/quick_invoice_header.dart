import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Text(
            "Quick Invoice",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          Container(
              width: 50,
              height: 50,
              decoration: const ShapeDecoration(
                shape: OvalBorder(),
                color: Color(0xFFFAFAFA),
              ),
              child: const Center(
                  child: Icon(Icons.add, color: Color(0xFF4EB7F2))))
        ],
      ),
    );
  }
}
