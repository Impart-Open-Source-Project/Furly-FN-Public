import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';
import '../../map/providers/user_model_provider.dart';
import '../../utils/error_handle_util.dart';
import '../util/auth_util.dart';

class RegisterView extends ConsumerStatefulWidget {
  final Function() onBackButtonClicked;
  const RegisterView({
    super.key,
    required this.onBackButtonClicked,
  });

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController avatarController = TextEditingController();

  void register() async {
    final userId = userIdController.text;
    final email = emailController.text;
    final username = usernameController.text;
    final password = passwordController.text;
    final avatar = avatarController.text;

    final errorMessage = AuthUtil().validateRegisterRequest(
        userId: userId, email: email, username: username, password: password);
    if (errorMessage == null) {
      final registerSuccess =
          await ref.read(userModelProvider.notifier).register(
                userId: userId,
                email: email,
                username: username,
                password: password,
                avatar: avatar,
              );
      if (registerSuccess) {
        final getUserDataSuccess =
            await ref.read(userModelProvider.notifier).getUserInfo();
        if (!getUserDataSuccess) {
          ErrorHandler().showErrorSnackBar('Login failed');
        }
      }
    } else {
      ErrorHandler().showErrorSnackBar('Register failed: $errorMessage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: userIdController,
            decoration: const InputDecoration(hintText: 'userId'),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(hintText: 'email'),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(hintText: 'username'),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(hintText: 'password'),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: avatarController,
            decoration: const InputDecoration(hintText: 'avatar'),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: surface4Color,
              backgroundColor: const Color.fromRGBO(128, 116, 156, 0.5),
              minimumSize: const Size(double.infinity, 56),
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            label: Text(
              '注册',
              style: TextStyle(
                fontSize: 16.0,
                color: textColor,
                height: 1.5,
              ),
            ),
            icon: Icon(
              Icons.east,
              color: textColor,
            ),
            onPressed: register,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: surface4Color,
              backgroundColor: const Color.fromRGBO(128, 116, 156, 0.5),
              minimumSize: const Size(double.infinity, 56),
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            label: Text(
              '返回',
              style: TextStyle(
                fontSize: 16.0,
                color: textColor,
                height: 1.5,
              ),
            ),
            icon: Icon(
              Icons.east,
              color: textColor,
            ),
            onPressed: widget.onBackButtonClicked,
          ),
        ],
      ),
    );
  }
}
