/// if this entity is carrying a searching result, set lat and lng to 999
class UserEntity {
  String userId;
  String username;
  String avatar;
  double lat;
  double lng;
  int? lastUpdated;
  int? lastLogon;
  late bool isSearchingResult;
  UserEntity({
    required this.username,
    required this.userId,
    required this.avatar,
    required this.lat,
    required this.lng,
    this.lastUpdated,
    this.lastLogon,
  }) {
    if (lat == 999 && lng == 999) {
      isSearchingResult = true;
    } else {
      isSearchingResult = false;
    }
  }

  UserEntity copyWith({
    String? username,
    String? avatar,
    double? lat,
    double? lng,
    int? lastUpdated,
    int? lastLogon,
  }) {
    return UserEntity(
      username: username ?? this.username,
      userId: userId,
      avatar: avatar ?? this.avatar,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastLogon: lastLogon ?? this.lastLogon,
    );
  }
}
