import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/hero_tag.dart';
import '../../../constants/language_enum.dart';
import '../provider/setting_view_entity_provider.dart';
import 'setting_toggle.dart';

class LanguageSelectDialog extends ConsumerWidget {
  const LanguageSelectDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingEntity = ref.watch(settingViewEntityProvider);
    return Hero(
      tag: HeroTag.settingLanguageHero.name,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox.expand(),
            ),
            Positioned(
              left: 10,
              right: 10,
              child: Container(
                height: 190.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF1C1B1F),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  itemCount: Language.values.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: SettingToggle(
                      isEnabled:
                          settingEntity?.appLanguage == Language.values[index],
                      onClick: () {
                        ref
                            .read(settingViewEntityProvider.notifier)
                            .setLanguage(Language.values[index]);
                        Navigator.pop(context);
                      },
                      child: Text(
                        Language.values[index].getName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
