import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  // 🔒 Private reactive variable
  final _email = ''.obs;

  // 👁️ Getter
  String get email => _email.value;

  // ✏️ Setter (THIS was broken before)
  void setEmail(String value) {
    _email.value = value.trim();
  }

  // ✅ Validation
  String? validate() {
    if (_email.value.isEmpty) {
      return "Email is required";
    }
    if (!_email.value.contains('@')) {
      return "Enter a valid email";
    }
    return null;
  }

  // 🚀 Send reset link
  bool sendResetLink() {
    final error = validate();

    if (error != null) {
      Get.snackbar("Error", error, snackPosition: SnackPosition.BOTTOM);
      return false;
    }

    // Simulate success (replace with real backend later)
    Get.snackbar(
      "Success",
      "Password reset link sent",
      snackPosition: SnackPosition.BOTTOM,
    );

    return true;
  }
}
