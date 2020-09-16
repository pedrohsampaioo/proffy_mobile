import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';

class TotalConnectionsWidget extends StatelessWidget {
  final int connections;

  const TotalConnectionsWidget({
    Key key,
    @required this.connections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Total de $connections conexões',
          style: AppTypography.bodyRegular.copyWith(
            color: AppColors.textComplement,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'já realizadas',
              style: AppTypography.bodyRegular.copyWith(
                color: AppColors.textComplement,
              ),
            ),
            const SizedBox(width: 4),
            SvgPicture.asset(AppSvgPath.heart),
          ],
        ),
      ],
    );
  }
}
