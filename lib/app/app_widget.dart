import 'package:flutter/material.dart';

import '../modules/splash/splash_page.dart';
import 'core/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      theme: AppTheme.config,
    );
  }
}
