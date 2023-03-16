class AuthUtil {
  String? validateRegisterRequest({
    required String userId,
    required String email,
    required String username,
    required String password,
    String? avatar,
  }) {
    final bool isNotEmpty = (isEmptyString(userId) &&
        isEmptyString(email) &&
        isEmptyString(username) &&
        isEmptyString(password));
    final bool passwordValidate = passwordValidator(password);
    if (!isNotEmpty) return 'userId/email/username/password cannot be empty';
    if (!passwordValidate) return 'password format not valid';
    return null;
  }

  bool passwordValidator(String password) {
    // TODO: somelogichere
    return true;
  }

  bool isEmptyString(String string) {
    return (string != '' && string.isNotEmpty);
  }
}
