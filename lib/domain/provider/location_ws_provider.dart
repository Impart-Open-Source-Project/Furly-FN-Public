import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../local_storage/shared_preference_provider.dart';
import '../repository/location_ws_repository.dart';

part 'location_ws_provider.g.dart';

@Riverpod(keepAlive: true)
LocationWsRepository locationRepo(
  LocationRepoRef ref,
) {
  final pref = ref.watch(sharedPreferenceNotifierProvider);
  final token = pref?.getString(userTokenKey);
  return LocationWsRepository(
    authorization: token ?? '',
  );
}
