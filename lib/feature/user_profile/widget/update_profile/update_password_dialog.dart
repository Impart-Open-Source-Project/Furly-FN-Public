import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../map/providers/user_model_provider.dart';
import '../../../widget/fur_button.dart';
import '../../../widget/fur_textfield.dart';
import '../../constant/user_profile_constant.dart';

class UpdatePasswordDialog extends ConsumerStatefulWidget {
  final Function(UpdateDialogType type) setUpdateDialogType;

  const UpdatePasswordDialog({
    Key? key,
    required this.setUpdateDialogType,
  }) : super(key: key);

  @override
  ConsumerState<UpdatePasswordDialog> createState() =>
      _UpdatePasswordDialogState();
}

class _UpdatePasswordDialogState extends ConsumerState<UpdatePasswordDialog> {
  String oldPassword = '';
  String newPassword = '';
  String confirmPassword = '';
  String errorMessage = '';

  bool checkPassword() {
    // TODO: try another error showing mechanism,
    // there is a Hero inside Snack bar, and we also has a Hero on parent widget.
    if (oldPassword.isEmpty) {
      setState(() {
        errorMessage = 'Old password missing';
      });
      return false;
    }

    if (newPassword.isEmpty) {
      setState(() {
        errorMessage = 'New password missing';
      });
      return false;
    }

    if (confirmPassword.isEmpty) {
      setState(() {
        errorMessage = 'Confirm password missing';
      });
      return false;
    }

    if (oldPassword == newPassword) {
      setState(() {
        errorMessage = '';
      });
      return true;
    } else {
      setState(() {
        errorMessage = 'Password mismatch';
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.setUpdateDialogType(UpdateDialogType.normal);
        return false;
      },
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Center(
            child: Text(
              'Old password',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          FurTextfield(
            hintText: 'Old password',
            onValueChanged: (value) {
              setState(() {
                oldPassword = value;
              });
            },
            obscureText: true,
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(
              'New password',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          FurTextfield(
            hintText: 'New password',
            onValueChanged: (value) {
              setState(() {
                newPassword = value;
              });
            },
            obscureText: true,
          ),
          const SizedBox(height: 10.0),
          FurTextfield(
            hintText: 'Confirm password',
            onValueChanged: (value) {
              setState(() {
                confirmPassword = value;
              });
            },
            obscureText: true,
          ),
          const SizedBox(height: 20.0),
          FurButton(
            height: 60.0,
            onClick: () {
              if (checkPassword()) {
                ref.read(userModelProvider.notifier).updatePassword(
                      oldPassword,
                      newPassword,
                    );
              }
            },
            child: Text(
              errorMessage == '' ? 'Confirm' : errorMessage,
              style: TextStyle(
                color: errorMessage == '' ? Colors.white : Colors.red,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          FurButton(
            height: 60.0,
            onClick: () {
              widget.setUpdateDialogType(UpdateDialogType.normal);
            },
            child: const Text(
              'Back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
