abstract class Validator{
  static String? validateName(String? name){
    if (name == null || name.trim().isEmpty) {
      return "Name is Required";
    }
    if (name.length < 4) {
      return "Name must be at least 6 chars";
    }
    return null;
  }
  static String? validateEmail(String? email){
    if (email == null || email.trim().isEmpty) {
      return "Email is Required";
    }
    if (!isValidEmail(email)) {
      return "Email Bad Format";
    }
    return null;
  }
  static String? validatePassword(String? password){
    if (password == null || password.trim().isEmpty) {
      return "Password is Required";
    }
    if (!isValidPassword(password)) {
      return "Weak Password";
    }
    return null;
  }
  static String? validateRePassword(String? rePassword){
    if (rePassword == null || rePassword.trim().isEmpty) {
      return "Password is Required";
    }
    if (!isValidPassword(rePassword)) {
      return "Weak Password";
    }
    return null;
  }

}

bool isValidEmail(String email) {
  return RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(email);
}
bool isValidPassword(String password) {
  return RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
  ).hasMatch(password);
}