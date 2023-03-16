import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mapbox_controller_provider.g.dart';

@Riverpod(keepAlive: true)
class MapBoxController extends _$MapBoxController {
  @override
  MapboxMap? build() {
    print('''
---------------------------------
mapboxController build
---------------------------------
''');
    return null;
  }

  void setController(MapboxMap controller) {
    state = controller;
  }
}
