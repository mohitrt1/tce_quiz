import 'package:flutter/material.dart';
import 'package:quiz_app/src/config/app_config.dart';

class TextNormal extends StatelessWidget {
  final String? text;
  final Color? color;
  final bool? isBold;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  TextNormal(this.text, {this.color, this.isBold, this.fontSize, this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      (text ?? "N/A"),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines ?? 1000,
      textAlign: textAlign,
      style: TextStyle(
        color: color ?? AppColors.textColorNormal,
        fontSize: fontSize ?? 17,
        fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
