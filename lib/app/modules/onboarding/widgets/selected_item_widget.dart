import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';


class SelectedItemWidget extends StatelessWidget {
  final int amount;
  final int selected;
  final Color selectedColor;

  const SelectedItemWidget({
    Key key,
    @required this.amount,
    @required this.selected,
    @required this.selectedColor,
  })  : assert(amount != null),
        assert(selected != null),
        assert(selectedColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        amount,
        (index) => Padding(
          padding: index == 0
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 12),
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: index == selected ? selectedColor : AppColors.textInput,
              borderRadius: BorderRadius.circular(1),
            ),
            height: 6,
            width: 6,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
