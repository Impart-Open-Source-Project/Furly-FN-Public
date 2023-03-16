import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

import '../../constants/global_constant.dart';
import '../../domain/local_storage/shared_preference_provider.dart';
import '../widget/fading_edge/fading_edge.dart';
import 'entity/lng_lat.dart';
import 'providers/mapbox_controller_provider.dart';
import 'providers/markers_provider.dart';
import 'providers/user_location_provider.dart';
import 'utils/map_utils.dart';

class MapBase extends ConsumerStatefulWidget {
  const MapBase({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapBaseState();
}

class _MapBaseState extends ConsumerState<MapBase> {
  LngLat? initPosition;
  late final MapboxMap controller;

  void getInitPosition() {
    final pref = ref.read(sharedPreferenceNotifierProvider);
    final lat = pref?.getDouble(lastLatKey);
    final lng = pref?.getDouble(lastLngKey);
    if (lat != null && lng != null) {
      initPosition = LngLat(lng, lat);
    }
  }

  void onMapCreated(MapboxMap controller) {
    this.controller = controller;
    ref.read(mapBoxControllerProvider.notifier).setController(controller);
  }

  void onStyleLoadedCallback(StyleDataLoadedEventData eventData) async {
    controller.location.updateSettings(
      LocationComponentSettings(
        enabled: true,
        pulsingEnabled: true,
        puckBearingEnabled: true,
        showAccuracyRing: true,
        puckBearingSource: PuckBearingSource.HEADING,
      ),
    );
  }

  void cameraChangeListener(CameraChangedEventData eventData) {
    ref.read(markersProvider.notifier).updateMarkerPosition();
  }

  @override
  void initState() {
    super.initState();
    getInitPosition();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userCurrentLocationData = ref.watch(userLocationNotifierProvider);
    final marker = ref.watch(markersProvider);

    return Stack(
      children: [
        FadingEdge(
          // child: MapboxMap(
          //   accessToken: Global.mapboxToken,
          //   myLocationEnabled: true,
          //   trackCameraPosition: true,
          //   onCameraIdle: () =>
          //       ref.read(markersProvider.notifier).updateMarkerPosition(),
          //   onMapCreated: onMapCreated,
          //   onStyleLoadedCallback: () => onStyleLoadedCallback(),
          //   initialCameraPosition: CameraPosition(
          //     target: initPosition ?? const LatLng(0, 0),
          //     zoom: Global.defaultZoomLevel,
          //   ),
          //   styleString: Global.mapBoxStyle,
          // ),
          child: MapWidget(
            mapOptions: MapOptions(
              pixelRatio: 1.0,
            ),
            resourceOptions: ResourceOptions(
              accessToken: Global.accessToken,
            ),
            cameraOptions: CameraOptions(
              center: initPosition?.toMap(),
              zoom: Global.defaultZoomLevel,
            ),
            onStyleDataLoadedListener: onStyleLoadedCallback,
            onMapCreated: onMapCreated,
            onCameraChangeListener: cameraChangeListener,
            styleUri: Global.mapBoxStyle,
          ),
        ),
        IgnorePointer(
          ignoring: true,
          child: Stack(
            children: marker,
          ),
        ),
        if (userCurrentLocationData != null)
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: SizedBox(
                width: 60.0,
                height: 60.0,
                child: MaterialButton(
                  //TODO change location to controller's location
                  onPressed: () async => await animateCameraToUser(
                      controller, userCurrentLocationData),
                  child: const Icon(
                    Icons.location_searching,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
