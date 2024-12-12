// lib/core/utils/validators.dart

class Validators {
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  static bool isValidUsername(String username) {
    return username.isNotEmpty;
  }
}
