import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  
  final SignUpController controller = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/background.jpeg", fit: BoxFit.cover),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white24,
                      child: Icon(
                        Icons.person_add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 3,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    
                    TextField(
                      onChanged: controller.setUsername,
                      style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 3,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    
                    TextField(
                      onChanged: controller.setEmail,
                      style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 3,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    
                    Obx(
                      () => TextField(
                        onChanged: controller.setPassword,
                        obscureText: !controller.isPasswordVisible.value,
                        style: const TextStyle(
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: controller.togglePassword,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.all(14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          if (controller.signUp()) {
                            
                            Get.snackbar(
                              "Success",
                              "Account created successfully",
                              snackPosition: SnackPosition.BOTTOM,
                            );

                            Get.back(); 
                          }
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
