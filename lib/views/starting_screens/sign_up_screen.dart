import 'package:flutter/material.dart';
import 'package:sample/components/app_primary_button.dart';
import 'package:sample/components/text_widget.dart';
import 'package:sample/utilities/app_routing.dart';
import 'package:sample/utilities/app_styles.dart';
import '../../api/firebase_auth.dart';
import '../../components/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  bool isLoading = false;

  _signUpCallBack(){
    setState(() {
      isLoading=true;
    });
    FirebaseAuthentications().signUp(
        email: emailCtl.text,
        password: passwordCtl.text,
        onLoad: (){
          AppRouting(context).to(route: "/home");
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppStyles.primaryColor,
        title: TextWidget(
            text: "Sign Up",
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
              value: 'SignUp',
              onTab: _signUpCallBack,
              isLoading: isLoading,
            )
          ],
        ),
      ),
    );
  }
}
