import 'package:flutter/material.dart';

import '../../../../core/assets/app_svg_path.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../shared/widgets/svg_concatenation_widget.dart';
import '../../dto/template_dto.dart';

class OnboardingUtils {
  static List<TemplateDto> get staticTemplates => <TemplateDto>[
        TemplateDto(
          headerBackground: AppColors.purple,
          headerWidget: Center(
            key: Key('first_template'),
            child: SvgConcatenationWidget(
              svgPaths: [
                AppSvgPath.onboardingBackground01,
                AppSvgPath.onboardingHeader01,
              ],
            ),
          ),
          text: 'Encontre vários professores para ensinar você',
        ),
        TemplateDto(
          headerBackground: AppColors.green,
          headerWidget: Center(
            key: Key('second_template'),
            child: SvgConcatenationWidget(
              svgPaths: [
                AppSvgPath.onboardingBackground02,
                AppSvgPath.onboardingHeader02,
              ],
            ),
          ),
          text: 'Ou dê aulas sobre o que você mais conhece',
        ),
      ];
}
