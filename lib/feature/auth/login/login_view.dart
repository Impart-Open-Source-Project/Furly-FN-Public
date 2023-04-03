import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';
import '../../map/providers/user_model_provider.dart';

class LoginView extends ConsumerStatefulWidget {
  final Function() onRegisterButtonClicked;
  const LoginView({
    super.key,
    required this.onRegisterButtonClicked,
  });

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final userId = userIdController.text;
    final password = passwordController.text;
    final loginSuccess = await ref.read(userModelProvider.notifier).login(
          userId: userId,
          password: password,
        );
    if (loginSuccess) {
      await ref.read(userModelProvider.notifier).getUserInfo();
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(userModelProvider.notifier).tryAutoLogin();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userIdController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const Text('userId'),
          Text(
            // "Login",
            AppLocalizations.of(context)!.login,
            style: const TextStyle(fontSize: 48),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextField(
            controller: userIdController,
            decoration: const InputDecoration(hintText: 'userId'),
          ),
          // const Text('password'),
          const SizedBox(height: 20.0),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              // border: InputBorder.none,
              hintText: '密码',
            ),
          ),
          // ElevatedButton(
          //   onPressed: login,
          //   child: const Text('Login'),
          // ),
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
              '登录',
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
            onPressed: login,
          ),
          const SizedBox(height: 20.0),
          //TODO: common this Button
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
            onPressed: widget.onRegisterButtonClicked,
          ),
        ],
      ),
    );
  }
}
