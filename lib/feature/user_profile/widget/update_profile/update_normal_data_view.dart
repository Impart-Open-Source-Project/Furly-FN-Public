import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../map/entity/user_entity.dart';
import '../../../map/providers/user_model_provider.dart';
import '../../../widget/fur_button.dart';
import '../../../widget/fur_textfield.dart';
import '../../constant/user_profile_constant.dart';

class UpdateNormalDataView extends ConsumerStatefulWidget {
  final UserEntity userEntity;
  final Function(UpdateDialogType type) setUpdateDialogType;

  const UpdateNormalDataView({
    Key? key,
    required this.userEntity,
    required this.setUpdateDialogType,
  }) : super(key: key);

  @override
  ConsumerState<UpdateNormalDataView> createState() =>
      _UpdateNormalDataViewState();
}

class _UpdateNormalDataViewState extends ConsumerState<UpdateNormalDataView> {
  String userName = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      userName = widget.userEntity.username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const Center(
          child: Text(
            'Username',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        FurTextfield(
          hintText: widget.userEntity.username,
          onValueChanged: (value) {
            setState(() {
              userName = value;
            });
          },
          onClick: (Function(bool) setIsLoading) async {
            setIsLoading(true);
            final result =
                await ref.read(userModelProvider.notifier).updateUserInfo(
                      username: userName,
                      // TODO: avatar
                    );
            setIsLoading(false);
            if (result) {
              if (mounted) {
                Navigator.pop(context);
              }
            }
          },
          hasConfirmButton: true,
        ),
        const SizedBox(height: 60.0),
        FurButton(
          onClick: () {
            widget.setUpdateDialogType(
              UpdateDialogType.password,
            );
          },
          child: const Text(
            'Change password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
