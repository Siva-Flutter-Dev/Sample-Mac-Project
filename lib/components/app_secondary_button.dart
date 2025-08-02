import 'package:flutter/material.dart';
import 'package:sample/components/text_widget.dart';
import 'package:sample/utilities/app_styles.dart';

class AppSecondaryButton extends StatelessWidget {
  final String value;
  final VoidCallback onTab;
  final bool isLoading;
  const AppSecondaryButton({
    super.key,
    required this.value,
    required this.onTab,
    this.isLoading=false
  });

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: currentWidth,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppStyles.white,
          border: Border.all(color: AppStyles.primaryColor)
        ),
        child: Center(
          child: isLoading
              ?Padding(
              padding: EdgeInsets.all(10),
              child: CircularProgressIndicator(color: AppStyles.primaryColor,))
              :TextWidget(
            text: value,
            fontWeight: FontWeight.w600,
            fontSize: AppStyles.medium,
            textColor: AppStyles.black,
          ),
        ),
      ),
    );
  }
}
