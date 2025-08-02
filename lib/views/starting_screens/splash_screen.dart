import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/utilities/app_routing.dart';
import 'package:sample/utilities/app_styles.dart';
import '../../components/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), () {
        AppRouting(context).to(route: "/signin");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: currentWidth,
        decoration: BoxDecoration(
          gradient: AppStyles.appGradientThemeVertical
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.person_circle,color: AppStyles.white,size: 150,),
            TextWidget(
              text: "Application",
              fontSize: AppStyles.ultraBig,
              fontWeight: FontWeight.w700,
              textColor: AppStyles.white,
            )
          ],
        ),
      ),
    );
  }
}
