import 'package:flutter/material.dart';
import 'package:quiz_app/src/config/app_config.dart';
import 'package:quiz_app/src/widgets/text/text_normal.dart';

class TextSmall extends StatelessWidget {
  final String text;
  final Color? color;
  final bool? isBold;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  TextSmall(this.text, {this.color, this.isBold, this.fontSize, this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextNormal(
      text,
      color: color ?? AppColors.textColorNormal,
      isBold: isBold,
      fontSize: fontSize ?? 14,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
