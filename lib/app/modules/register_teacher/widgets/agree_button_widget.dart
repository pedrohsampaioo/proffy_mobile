import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class AgreeButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const AgreeButtonWidget({
    Key key,
    @required this.onTap,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: AppTypography.bodySemiBold.copyWith(
          color: Colors.white,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      color: AppColors.green.withOpacity(0.9),
      onPressed: onTap,
    );
  }
}
