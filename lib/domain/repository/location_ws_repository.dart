import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../constants/global_constant.dart';
import '../../utils/error_handle_util.dart';
import '../dto/response/ws/base_ws_response.dart';
import '../dto/response/ws/update_location_ws_response.dart';

class LocationWsRepository {
  late WebSocket socket;
  String authorization;
  bool isWebsocketConnected = false;

  LocationWsRepository({
    this.authorization = '',
  });

  void createConnection({
    Function(
      String userId,
      int timestamp,
      double lng,
      double lat,
    )?
        updateUserLocation,
  }) async {
    try {
      socket = await WebSocket.connect(
        Global.wsDomain,
        headers: {
          'authorization': authorization,
        },
      );
      socket.listen(
        (event) {
          print('WebSocket listen: $event');
          if (event is String) {
            final Map<String, Object?> json = jsonDecode(event);
            final baseWsResponse = BaseWsResponse.fromJson(json);
            if (baseWsResponse.code == 0) {
              switch (baseWsResponse.operate) {
                case 'updateLocation':
                  _updateLocation(baseWsResponse, updateUserLocation);
                  break;
                default:
                  break;
              }
            }
          }
        },
        onError: (error) {
          print('webSocket onError: $error');
          ErrorHandler().showErrorSnackBar('websocket onError');
        },
        onDone: () {
          print('webSocket onDone');
          ErrorHandler().showErrorSnackBar('websocket onDone, reconnecting');
          isWebsocketConnected = false;
          retryOnConnectionFailed(updateUserLocation);
        },
      );
      isWebsocketConnected = true;
      Timer.periodic(const Duration(seconds: 30), (_) {
        _sendHeartBeatPackage();
      });
    } on HandshakeException catch (e) {
      print('HandshakeException:$e');
      ErrorHandler().showErrorSnackBar('Network Error(Socket)');
      retryOnConnectionFailed(updateUserLocation);
    }
  }

  void sendLocation(
    double lng,
    double lat,
  ) {
    if (isWebsocketConnected) {
      final Map request = {
        'operate': 'updateLocation',
        'data': {
          'lng': lng,
          'lat': lat,
        },
      };
      final jsonString = jsonEncode(request);
      socket.add(jsonString);
    }
  }

  void retryOnConnectionFailed(
    Function(
      String userId,
      int timestamp,
      double lat,
      double lon,
    )?
        updateUserLocation,
  ) {
    Future.delayed(const Duration(seconds: 10), () {
      createConnection(
        updateUserLocation: updateUserLocation,
      );
    });
  }

  void _sendHeartBeatPackage() {
    final Map request = {
      'operate': 'heartBeat',
      'msg': 'QAQ',
    };
    final jsonString = jsonEncode(request);
    socket.add(jsonString);
  }

  void _updateLocation(
    BaseWsResponse baseWsResponse,
    Function(
      String userId,
      int timestamp,
      double lng,
      double lat,
    )?
        updateUserLocation,
  ) {
    final updateLocationResponse =
        UpdateLocationWsResponse.fromJson(baseWsResponse.data);
    print('updateLocationResponse: ${updateLocationResponse.toString()}');
    if (updateUserLocation != null) {
      updateUserLocation(
        updateLocationResponse.userId ?? '',
        updateLocationResponse.timestamp ?? 0,
        updateLocationResponse.location?.lng ?? 0,
        updateLocationResponse.location?.lat ?? 0,
      );
    }
  }
}
