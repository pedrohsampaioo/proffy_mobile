import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proffy_mobile/app/modules/home/widgets/total_connections_widget.dart';

import '../../core/assets/app_svg_path.dart';
import '../../core/theme/app_theme.dart';
import 'widgets/option_card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            const SizedBox(height: 40),
            _buildPresentationText(),
            const SizedBox(height: 40),
            _buildCards(context),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: TotalConnectionsWidget(
                connections: 500,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: AppColors.purple,
      padding: const EdgeInsets.symmetric(
        vertical: 48,
        horizontal: 16,
      ),
      child: SafeArea(
        child: SvgPicture.asset(
          AppSvgPath.homeHeader,
        ),
        bottom: false,
      ),
    );
  }

  Widget _buildPresentationText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: RichText(
        text: TextSpan(
          style: AppTypography.bodyLargeRegular.copyWith(
            color: AppColors.textBase,
          ),
          children: [
            TextSpan(text: 'Seja bem-vindo.\n'),
            TextSpan(
              text: 'O que deseja fazer?',
              style: AppTypography.bodyLargeBold,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: OptionCardWidget(
              backgroundColor: AppColors.purple,
              svgPath: AppSvgPath.learnCard,
              title: 'Estudar',
              onTap: () => Navigator.pushNamed(context, '/register_teacher'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: OptionCardWidget(
              backgroundColor: AppColors.green,
              svgPath: AppSvgPath.teachCard,
              title: 'Dar aulas',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
