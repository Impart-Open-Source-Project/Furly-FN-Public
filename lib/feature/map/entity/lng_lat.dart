class LngLat {
  double lng;
  double lat;
  LngLat(this.lng, this.lat);

  Map<String, Object> toMap() {
    return {
      'coordinates': [lng, lat],
    };
  }
}
