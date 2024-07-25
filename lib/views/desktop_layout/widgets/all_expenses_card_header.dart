import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesCardHeader extends StatelessWidget {
  const AllExpensesCardHeader({
    super.key,
    required this.image,
    required this.selected,
  });
  final String image;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(selected: selected, image: image),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 32,
          color: selected ? Colors.white : const Color(0xFF064061),
        )
      ],
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.selected,
    required this.image,
  });

  final bool selected;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color:
                selected ? Colors.white.withOpacity(0.1) : Color(0xFFFAFAFA)),
        child: Center(
            child: SvgPicture.asset(
          image,
          color: selected ? Colors.white : null,
        )));
  }
}
