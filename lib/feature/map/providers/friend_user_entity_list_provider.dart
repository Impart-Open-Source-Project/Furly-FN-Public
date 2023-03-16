import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/dto/response/api/friend_list_response.dart';
import '../../../domain/extension/dio_extension.dart';
import '../../../domain/helper/api_helper.dart';
import '../../../domain/local_storage/shared_preference_provider.dart';
import '../../../domain/provider/location_ws_provider.dart';
import '../../../domain/repository/location_ws_repository.dart';
import '../entity/user_entity.dart';

part 'friend_user_entity_list_provider.g.dart';

@riverpod
class FriendUserEntityList extends _$FriendUserEntityList {
  late final LocationWsRepository repository;
  late final SharedPreferences? pref;
  @override
  List<UserEntity> build() {
    print('''
---------------------------------
FriendUserEntityList build
---------------------------------
''');
    pref = ref.watch(sharedPreferenceNotifierProvider);
    final token = pref?.getString(userTokenKey);
    fetchData();
    if (token != null) {
      repository = ref.watch(locationRepoProvider);
      repository.createConnection(
        updateUserLocation: updateUserLocation,
      );
    }

    return [];
  }

  void fetchData() async {
    final apiResponse = await ref.dio.get(
      '/friend/list',
      queryParameters: {
        'pageSize': 9999,
        'page': 1,
      },
    );
    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: FriendListResponse.fromJson,
    );

    if (response.success && response.data != null) {
      final entities = convertDtoToEntity(response.data!);
      state = entities;
    }
  }

  void updateUserLocation(
    String userId,
    int timestamp,
    double lng,
    double lat,
  ) {
    List<UserEntity> entities = [...state];

    final index = entities.indexWhere((element) => element.userId == userId);
    if (index != -1) {
      entities[index] = entities[index].copyWith(
        lat: lat,
        lng: lng,
        lastUpdated: timestamp,
      );
      state = entities;
    }
  }

  List<UserEntity> convertDtoToEntity(FriendListResponse response) {
    final List<UserEntity> entityList = [];
    if (response.users != null && response.users!.isNotEmpty) {
      for (var element in response.users!) {
        entityList.add(
          UserEntity(
            username: element.username ?? '',
            userId: element.userId ?? '',
            avatar: element.avatar ?? '',
            lat: element.location?.lat ?? 0,
            lng: element.location?.lng ?? 0,
            lastLogon: element.lastLogon,
            lastUpdated: element.lastUpdated,
          ),
        );
      }
    }
    return entityList;
  }
}
