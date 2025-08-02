import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/utilities/app_styles.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  const TextWidget({super.key, required this.text, this.fontSize, this.fontWeight, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize??AppStyles.medium,
        fontWeight: fontWeight??FontWeight.w500,
        color: textColor??AppStyles.black,
      ),
    );
  }
}
