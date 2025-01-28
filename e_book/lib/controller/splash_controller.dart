import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../pages/HomePage/home_page.dart';
import '../pages/WelcomePage/welcome_page.dart';

class SplashController extends GetxController{
  final auth = FirebaseAuth.instance;
  @override
  void onInit() {
    splashFunction();
    super.onInit();
  }
  void splashFunction(){
    Timer(const Duration(seconds: 5), () {
      if(auth.currentUser!=null){
        Get.offAll(const HomePage());
      }else{
        Get.offAll(const WelcomePage());
      }
    });
  }
}