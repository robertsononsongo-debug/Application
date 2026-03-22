import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  
  final _email = ''.obs;

  
  String get email => _email.value;

 
  void setEmail(String value) {
    _email.value = value.trim();
  }

 
  String? validate() {
    if (_email.value.isEmpty) {
      return "Email is required";
    }
    if (!_email.value.contains('@')) {
      return "Enter a valid email";
    }
    return null;
  }

  
  bool sendResetLink() {
    final error = validate();

    if (error != null) {
      Get.snackbar("Error", error, snackPosition: SnackPosition.BOTTOM);
      return false;
    }

    
    Get.snackbar(
      "Success",
      "Password reset link sent",
      snackPosition: SnackPosition.BOTTOM,
    );

    return true;
  }
}
