import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'utils/templates/templates.dart';
import 'widgets/template_onboarding_widget.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _templates = OnboardingUtils.staticTemplates;

  int _selectedTemplate = 0;

  void _nextAction(
    String nextPageNamed,
  ) {
    if (_templates.length - 1 > _selectedTemplate) {
      setState(() {
        _selectedTemplate++;
      });
    } else {
      Navigator.pushReplacementNamed(context, nextPageNamed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: TemplateOnboardingWidget(
          nextAction: () => _nextAction(''),
          selectedTemplate: _selectedTemplate,
          templates: _templates,
        ),
      ),
    );
  }
}
