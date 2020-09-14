import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/onboarding/onboarding_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: SplashModule()),
        ModularRouter('/onboarding', module: OnboardingModule()),
      ];
}
