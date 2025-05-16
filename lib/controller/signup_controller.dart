// signup_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscureNewPassword = true;
  bool obscureConfirmPassword = true;

  String newPassword = '';
  String confirmPassword = '';

  bool get isButtonEnabled =>
      newPassword.isNotEmpty &&
          confirmPassword.isNotEmpty &&
          newPassword == confirmPassword;


  String? validateName(String? value) {
    if (value == null || value.isEmpty) return 'Name is required';
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value != passwordController.text) return 'Passwords do not match';
    return null;
  }

  bool submitForm(BuildContext context) {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context);
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }




}
