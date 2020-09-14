import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgConcatenationWidget extends StatelessWidget {
  final List<String> svgPaths;
  final Alignment alignment;

  const SvgConcatenationWidget({
    Key key,
    @required this.svgPaths,
    this.alignment = Alignment.center,
  })  : assert(svgPaths != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: svgPaths
          .map<SvgPicture>(
            (path) => SvgPicture.asset(path),
          )
          .toList(),
    );
  }
}
