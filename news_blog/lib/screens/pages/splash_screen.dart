import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/splash_screen_controllers.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController splashController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.StartAnimation();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(
          () => AnimatedOpacity(
            duration: const Duration(milliseconds: 1600),
            opacity: splashController.animate.value ? 1.0 : 0,
            child: Image.asset('assets/image/blog-1.png'),
          ),
        ),
      ),
    );
  }
}
