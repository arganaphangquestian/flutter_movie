import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviex/presentation/pages/main/main_page.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';
  SplashPage({Key? key}) : super(key: key) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Get.offAllNamed(MainPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash Page')),
    );
  }
}
