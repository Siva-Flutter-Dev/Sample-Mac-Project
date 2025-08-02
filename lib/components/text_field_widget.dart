import 'package:flutter/material.dart';
import 'package:sample/components/text_widget.dart';
import 'package:sample/utilities/app_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const TextFieldWidget({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppStyles.primaryColor,
      decoration: InputDecoration(
        label: TextWidget(
            text: label,
          fontSize: AppStyles.big,
          fontWeight: FontWeight.w600,
          textColor: AppStyles.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(color: AppStyles.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: AppStyles.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: AppStyles.grey)
        )
      ),
    );
  }
}
