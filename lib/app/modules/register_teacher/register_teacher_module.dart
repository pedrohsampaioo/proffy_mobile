import 'package:flutter_modular/flutter_modular.dart';

import 'pages/onboarding_register_teacher_page.dart';

class RegisterTeacherModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => OnboardingRegisterTeacherPage()),
      ];
}
