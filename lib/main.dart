import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';
import 'login_controller.dart';
import 'signup_controller.dart';
import 'forgot_password_controller.dart';

void main() {
  // ✅ Initialize ALL controllers once
  Get.put(LoginController());
  Get.put(SignUpController());
  Get.put(ForgotPasswordController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅ const is fine here

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barbershop App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: LoginScreen(),
    );
  }
}
