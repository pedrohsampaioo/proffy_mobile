import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/core/assets/app_svg_path.dart';
import '../../app/core/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AppSvgPath.backgroundSplash),
              SvgPicture.asset(AppSvgPath.logoSpash),
            ],
          ),
        ),
      ),
    );
  }
}
