import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_theme.dart';

class OptionCardWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String svgPath;
  final VoidCallback onTap;

  const OptionCardWidget({
    Key key,
    @required this.backgroundColor,
    @required this.title,
    @required this.svgPath,
    @required this.onTap,
  })  : assert(backgroundColor != null),
        assert(title != null),
        assert(svgPath != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(svgPath),
            const SizedBox(height: 48),
            Text(
              title,
              style: AppTypography.bodyBold.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
