import 'package:flutter/material.dart';

import '../../components/text_widget.dart';
import '../../utilities/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppStyles.primaryColor,
        title: TextWidget(
          text: "Home",
          fontSize: AppStyles.big,
          fontWeight: FontWeight.w700,
          textColor: AppStyles.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyles.primaryColor,
        shape: CircleBorder(),
        child: Icon(Icons.add,color: AppStyles.white,),
          onPressed: (){}
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
