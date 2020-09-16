import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:proffy_mobile/app/modules/home/home_module.dart';
import 'package:proffy_mobile/app/modules/register_teacher/register_teacher_module.dart';

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
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/register_teacher', module: RegisterTeacherModule()),
      ];
}
