import 'package:flutter/material.dart';

import '../../api/firebase_auth.dart';
import '../../components/app_primary_button.dart';
import '../../components/app_secondary_button.dart';
import '../../components/text_field_widget.dart';
import '../../components/text_widget.dart';
import '../../utilities/app_routing.dart';
import '../../utilities/app_styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  bool isLoading = false;

  _signInCallBack(){
    setState(() {
      isLoading=true;
    });
    FirebaseAuthentications().signIn(
        email: emailCtl.text,
        password: passwordCtl.text,
        onLoad: (){
          AppRouting(context).to(route: "/home");
        }
    );
  }

  _signUpCallBack(){
    AppRouting(context).push(route: "/signup");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppStyles.primaryColor,
        title: TextWidget(
          text: "Sign In",
          fontSize: AppStyles.big,
          fontWeight: FontWeight.w700,
          textColor: AppStyles.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10
        ),
        child: Column(
          spacing: 10,
          children: [
            TextFieldWidget(
              label: "Email",
              controller: emailCtl,
            ),
            TextFieldWidget(
              label: "Password",
              controller: passwordCtl,
            ),
            const SizedBox(height: 20,),
            AppPrimaryButton(
              value: 'SignIn',
              onTab: _signInCallBack,
              isLoading: isLoading,
            ),
            TextWidget(
              text: "or",
              fontSize: AppStyles.medium,
              fontWeight: FontWeight.w500,
              textColor: AppStyles.grey,
            ),
            AppSecondaryButton(
              value: 'SignUp',
              onTab: _signUpCallBack,
            )
          ],
        ),
      ),
    );
  }
}
