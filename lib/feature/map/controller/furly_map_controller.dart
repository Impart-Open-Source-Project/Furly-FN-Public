import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class FurlyMapController extends MapControllerImpl {
  bool _flying = false;
  late FlutterMapState _state;

  FurlyMapController();

  @override
  set state(final FlutterMapState state) {
    _state = state;
    super.state = state;
  }

  void flyTo(
    final LatLng targetCenter, {
    final double? zoom,
    final double? rotation,
    final Curve curve = Curves.easeInOut,
    final Duration? duration,
  }) {
    if (_flying) {
      return;
    }

    _flying = true;
    final from = _state.project(_state.center);
    final to = _state.project(targetCenter);
    final size = _state.size;
    final startZoom = _state.zoom;
    final startRotation = _state.rotation;

    final targetZoom = zoom ?? startZoom;
    final targetRotation = rotation ?? startRotation;

    final w0 = math.max(size.x, size.y);
    final w1 = w0 * _state.getZoomScale(startZoom, targetZoom);
    var u1 = to.distanceTo(from);

    if (u1 == 0) {
      u1 = 1;
    }
    const rho = 1.42;
    const rho2 = rho * rho;

    double r(final int i) {
      final s1 = i == 1 ? -1 : 1;
      final s2 = i == 1 ? w1 : w0;
      final t1 = w1 * w1 - w0 * w0 + s1 * rho2 * rho2 * u1 * u1;
      final b1 = 2 * s2 * rho2 * u1;
      final b = t1 / b1;
      final sq = math.sqrt(b * b + 1) - b;

      // workaround for floating point precision bug when sq = 0,
      // log = -Infinite, thus triggering an infinite loop in flyTo
      return sq < 0.000000001 ? -18 : math.log(sq);
    }

    double sinh(final double n) => (math.exp(n) - math.exp(-n)) / 2;

    double cosh(final double n) => (math.exp(n) + math.exp(-n)) / 2;

    double tanh(final double n) => sinh(n) / cosh(n);

    final r0 = r(0);

    double w(final double s) => w0 * (cosh(r0) / cosh(r0 + rho * s));

    double u(final double s) =>
        w0 * (cosh(r0) * tanh(r0 + rho * s) - sinh(r0)) / rho2;

    final start = DateTime.now();
    final S = (r(1) - r0) / rho;

    final millis = duration != null ? duration.inMilliseconds : 1000 * S * 0.8;

    Future<void> frame() async {
      final t = DateTime.now().difference(start).inMilliseconds / millis;

      if (t <= 1) {
        final progress = curve.transform(t);
        final s = progress * S;
        final newPos = _state.unproject(
          from + ((to - from).multiplyBy(u(s) / u1)),
          startZoom,
        );
        final newZoom = _state.getScaleZoom(w0 / w(s), startZoom);
        final newRotation =
            startRotation + (targetRotation - startRotation) * progress;

        WidgetsBinding.instance.addPostFrameCallback((final _) {
          _state.moveAndRotate(
            newPos,
            newZoom,
            newRotation,
            source: MapEventSource.flingAnimationController,
          );
          frame();
        });
        WidgetsBinding.instance.ensureVisualUpdate();
      } else {
        _state.moveAndRotate(
          targetCenter,
          targetZoom,
          targetRotation,
          source: MapEventSource.flingAnimationController,
        );
        _flying = false;
      }
    }

    frame();
  }

  void flyToBounds(
    final LatLngBounds bounds,
    final FitBoundsOptions options, {
    final Curve curve = Curves.easeInOut,
    final Duration? duration,
  }) {
    final target = _state.getBoundsCenterZoom(bounds, options);
    flyTo(target.center, zoom: target.zoom, curve: curve, duration: duration);
  }
}
