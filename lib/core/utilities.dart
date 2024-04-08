bool isValidEmail(String email) {
  final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);
}

bool isValidPassword(String password) {
  final RegExp regex = RegExp(r'^(?=.*?[!@#\$%\^&\*]).{8,}$');
  return regex.hasMatch(password);
}

bool isValidPhoneNumber(String phoneNumber) {
  final RegExp regex = RegExp(r'^[0-9]{11}$');
  return regex.hasMatch(phoneNumber);
}

bool isValidName(String name) {
  final RegExp regex = RegExp(r'^[a-zA-Z]{2,}$');
  return regex.hasMatch(name);
}
