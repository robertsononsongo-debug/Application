import 'package:get/get.dart';

class LoginController extends GetxController {
  
  final _username = ''.obs;
  final _password = ''.obs;

  
  String get username => _username.value;
  String get password => _password.value;


  final isPasswordVisible = false.obs;

  
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  
  void setUsername(String value) {
    _username.value = value.trim();
  }

  void setPassword(String value) {
    _password.value = value.trim();
  }

 
  String? validate() {
    if (_username.value.isEmpty) {
      return "Username is required";
    }
    if (_password.value.isEmpty) {
      return "Password is required";
    }
    if (_password.value.length < 4) {
      return "Password must be at least 4 characters";
    }
    return null;
  }

  
  bool login() {
    final error = validate();

    if (error != null) {
      Get.snackbar("Error", error, snackPosition: SnackPosition.BOTTOM);
      return false;
    }

   
    Get.snackbar(
      "Success",
      "Login successful",
      snackPosition: SnackPosition.BOTTOM,
    );

    return true;
  }
}
