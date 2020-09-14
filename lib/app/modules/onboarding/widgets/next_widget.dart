import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';

class NextWidget extends StatelessWidget {
  final VoidCallback onTap;

  const NextWidget({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SvgPicture.asset(AppSvgPath.arrowBack),
    );
  }
}
