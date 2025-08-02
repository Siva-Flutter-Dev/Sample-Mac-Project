import 'package:flutter/material.dart';
import 'package:sample/components/text_widget.dart';
import 'package:sample/utilities/app_styles.dart';

class AppPrimaryButton extends StatelessWidget {
  final String value;
  final VoidCallback onTab;
  final bool isLoading;
  const AppPrimaryButton({
    super.key,
    required this.value,
    required this.onTab,
    this.isLoading=false
  });

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: isLoading?null:onTab,
      child: Container(
        width: currentWidth,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: AppStyles.appGradientTheme
        ),
        child: Center(
          child: isLoading
          ?SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(color: AppStyles.white,)
          )
          :TextWidget(
              text: value,
            fontWeight: FontWeight.w600,
            fontSize: AppStyles.medium,
            textColor: AppStyles.white,
          ),
        ),
      ),
    );
  }
}
