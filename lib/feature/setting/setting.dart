import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/hero_tag.dart';
import '../../constants/language_enum.dart';
import '../../utils/route/hero_route.dart';
import '../map/providers/friend_user_entity_list_provider.dart';
import '../map/providers/user_model_provider.dart';
import '../widget/fur_button.dart';
import 'provider/setting_view_entity_provider.dart';
import 'widget/about_us.dart';
import 'widget/language_select_dialog.dart';
import 'widget/setting_toggle.dart';

class Setting extends ConsumerStatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  ConsumerState<Setting> createState() => _SettingState();
}

class _SettingState extends ConsumerState<Setting> {
  @override
  Widget build(BuildContext context) {
    final settingEntity = ref.watch(settingViewEntityProvider);

    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 74.0,
            child: Row(
              children: const [
                SizedBox(width: 10.0),
                Icon(
                  Icons.settings,
                  size: 48.0,
                  color: Colors.white,
                ),
                SizedBox(width: 20.0),
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          SettingToggle(
            isEnabled: settingEntity?.backgroundRefresh ?? false,
            onClick: () {
              ref
                  .read(settingViewEntityProvider.notifier)
                  .setBackgroundRefresh();
            },
            child: const Text(
              'BackGround Refresh',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Hero(
            tag: HeroTag.settingLanguageHero,
            child: FurButton(
              height: 55.0,
              onClick: () {
                Navigator.push(
                  context,
                  HeroRoute(
                    builder: (context) => const LanguageSelectDialog(),
                  ),
                );
              },
              child: Text(
                'Language: ${settingEntity?.appLanguage?.getName}',
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Hero(
            tag: HeroTag.aboutUsHero.name,
            child: FurButton(
              height: 55.0,
              onClick: () {
                Navigator.push(
                  context,
                  HeroRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              },
              child: const Text(
                'About us',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          FurButton(
            height: 55.0,
            onClick: () async {
              await ref.read(userModelProvider.notifier).logout();
              if (mounted) {
                Navigator.pop(context);
                ref
                    .read(friendUserEntityListProvider.notifier)
                    .closeWsConnection();
              }
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
