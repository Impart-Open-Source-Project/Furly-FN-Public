import 'package:flutter/material.dart';

import '../../constants/global_constant.dart';
import 'login/login_view.dart';
import 'register/register_view.dart';

class AuthRoute extends StatefulWidget {
  const AuthRoute({Key? key}) : super(key: key);

  @override
  State<AuthRoute> createState() => _AuthRouteState();
}

class _AuthRouteState extends State<AuthRoute> {
  bool isLoginPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: AnimatedSwitcher(
            duration: Global.normalAnimationDuration,
            child: isLoginPage
                ? LoginView(
                    onRegisterButtonClicked: () {
                      setState(() {
                        isLoginPage = false;
                      });
                    },
                  )
                : RegisterView(
                    onBackButtonClicked: () {
                      setState(() {
                        isLoginPage = true;
                      });
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
