import 'package:flutter/material.dart';
import 'package:quiz_app/src/config/app_config.dart';
import 'package:quiz_app/src/widgets/text/text_normal.dart';

class TextHeading extends StatelessWidget {
  final String text;
  final Color? color;
  final bool? isBold;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  TextHeading(this.text, {this.color, this.isBold, this.fontSize, this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextNormal(
      text,
      color: color ?? AppColors.textColorHeading,
      isBold: isBold ?? true,
      fontSize: fontSize ?? 25,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
