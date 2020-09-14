import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../dto/template_dto.dart';
import 'next_widget.dart';
import 'selected_item_widget.dart';

class TemplateOnboardingWidget extends StatelessWidget {
  final List<TemplateDto> templates;
  final int selectedTemplate;
  final Duration animationDuration;
  final VoidCallback nextAction;

  const TemplateOnboardingWidget({
    Key key,
    @required this.templates,
    @required this.selectedTemplate,
    @required this.nextAction,
    this.animationDuration = const Duration(seconds: 1),
  })  : assert(templates != null),
        assert(selectedTemplate != null),
        super(key: key);

  String get selectedTemplateFormatted =>
      '${(selectedTemplate + 1).toString().padLeft(2, '0')}.';

  @override
  Widget build(BuildContext context) {
    final template = templates[selectedTemplate];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildHeader(template),
        const SizedBox(height: 64),
        _buildTextInfo(template),
        const SizedBox(height: 64),
        _buildBottom(
          templates: templates,
          selected: selectedTemplate,
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildHeader(TemplateDto template) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(16),
      curve: Curves.linear,
      duration: animationDuration,
      color: template.headerBackground,
      child: SafeArea(
        child: AnimatedSwitcher(
          child: template.headerWidget,
          switchInCurve: Curves.linear,
          switchOutCurve: Curves.linear,
          duration: animationDuration,
          transitionBuilder: (widget, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: widget,
            );
          },
        ),
        bottom: false,
      ),
    );
  }

  Widget _buildTextInfo(TemplateDto template) {
    return AnimatedSwitcher(
      child: Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.only(
          left: 32,
          right: 104,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              selectedTemplateFormatted,
              textAlign: TextAlign.start,
              style: AppTypography.heading2.copyWith(
                color: AppColors.textBase.withOpacity(0.35),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              template.text,
              textAlign: TextAlign.start,
              style: AppTypography.heading5.copyWith(
                color: AppColors.textBase,
              ),
            ),
          ],
        ),
      ),
      switchInCurve: Curves.linear,
      switchOutCurve: Curves.linear,
      duration: animationDuration,
      transitionBuilder: (widget, animation) {
        return FadeTransition(
          opacity: animation,
          child: widget,
        );
      },
    );
  }

  Widget _buildBottom({
    @required List<TemplateDto> templates,
    @required int selected,
  }) {
    final template = templates[selected];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectedItemWidget(
            amount: templates.length,
            selected: selected,
            selectedColor: template.headerBackground,
          ),
          NextWidget(
            onTap: nextAction,
          ),
        ],
      ),
    );
  }
}
