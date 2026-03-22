import 'package:get/get.dart';

class LoginController extends GetxController {
  // 🔒 Private reactive variables
  final _username = ''.obs;
  final _password = ''.obs;

  // 👁️ Public getter (read-only outside)
  String get username => _username.value;
  String get password => _password.value;

  // 👁️ Password visibility
  final isPasswordVisible = false.obs;

  // 🔁 Toggle password visibility
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // ✏️ Setters
  void setUsername(String value) {
    _username.value = value.trim();
  }

  void setPassword(String value) {
    _password.value = value.trim();
  }

  // ✅ Validation
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

  // 🚀 Login logic
  bool login() {
    final error = validate();

    if (error != null) {
      Get.snackbar("Error", error, snackPosition: SnackPosition.BOTTOM);
      return false;
    }

    // Simulate success (replace with API later)
    Get.snackbar(
      "Success",
      "Login successful",
      snackPosition: SnackPosition.BOTTOM,
    );

    return true;
  }
}
