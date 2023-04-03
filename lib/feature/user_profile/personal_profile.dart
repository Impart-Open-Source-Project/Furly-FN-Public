import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../map/providers/user_model_provider.dart';
import 'widget/user_profile_layout.dart';

class PersonalProfile extends ConsumerWidget {
  const PersonalProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userEntity = ref.watch(userModelProvider);
    return userEntity == null
        ? const SizedBox()
        : UserProfileLayout(
            isSelfProfile: true,
            userEntity: userEntity,
          );
  }
}
