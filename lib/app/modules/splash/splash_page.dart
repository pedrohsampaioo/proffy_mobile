import 'package:flutter/material.dart';

import '../../core/assets/app_svg_path.dart';
import '../../core/theme/app_theme.dart';
import '../shared/widgets/svg_concatenation_widget.dart';

class SplashPage extends StatelessWidget {
  void _handleSplashTime(BuildContext context) {
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/onboarding'),
    );
  }

  @override
  Widget build(BuildContext context) {
    _handleSplashTime(context);
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SafeArea(
        child: Center(
          child: SvgConcatenationWidget(
            svgPaths: [
              AppSvgPath.backgroundSplash,
              AppSvgPath.logoSpash,
            ],
          ),
        ),
      ),
    );
  }
}
