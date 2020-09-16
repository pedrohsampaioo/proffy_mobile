import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import '../widgets/agree_button_widget.dart';

class OnboardingRegisterTeacherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 32),
              Center(
                child: SvgPicture.asset(
                  AppSvgPath.registerTeacherBody,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.72,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(42),
                child: AgreeButtonWidget(
                  title: 'Tudo bem',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
