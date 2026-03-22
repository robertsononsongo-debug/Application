import 'package:flutter/src/foundation/basic_types.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  // Text field values
  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  // Toggle password visibility
  var isPasswordVisible = false.obs;

  ValueChanged<String>? get setUsername => null;

  ValueChanged<String>? get setEmail => null;

  ValueChanged<String>? get setPassword => null;

  void togglePassword() => isPasswordVisible.value = !isPasswordVisible.value;

  // Simple signup validation
  bool signUp() {
    return username.value.isNotEmpty &&
        email.value.isNotEmpty &&
        password.value.isNotEmpty;
  }
}
