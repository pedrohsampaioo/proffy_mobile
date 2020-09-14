import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.config,
      initialRoute: Modular.initialRoute,
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
