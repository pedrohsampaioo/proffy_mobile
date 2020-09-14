import 'package:flutter/material.dart';

class TemplateDto {
  final Color headerBackground;
  final Widget headerWidget;
  final String text;

  TemplateDto({
    @required this.headerBackground,
    @required this.headerWidget,
    @required this.text,
  })  : assert(headerBackground != null),
        assert(headerWidget != null),
        assert(text != null);
}
