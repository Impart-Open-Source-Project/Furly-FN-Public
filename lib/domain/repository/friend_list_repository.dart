import 'package:dio/dio.dart';

import '../../utils/error_handle_util.dart';
import '../dto/response/api/friend_info_response.dart';
import '../dto/response/api/friend_request_response.dart';
import '../dto/response/api/friend_search_response.dart';
import '../helper/api_helper.dart';

class FriendListRepository {
  final Dio dio;
  FriendListRepository({
    required this.dio,
  });

  Future<FriendSearchResponse?> searchFriend(String userId) async {
    final apiResponse = await dio.get(
      '/friend/search',
      queryParameters: {'userId': userId},
    );

    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: FriendSearchResponse.fromJson,
    );
    if (response.success == true && response.data != null) {
      return response.data!;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return null;
  }

  Future<FriendInfoResponse?> getFriendInfo(String userId) async {
    final apiResponse = await dio.get(
      '/friend/info',
      queryParameters: {'userId': userId},
    );

    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: FriendInfoResponse.fromJson,
    );

    if (response.success == true && response.data != null) {
      return response.data!;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return null;
  }

  Future<FriendRequestResponse?> getFriendRequest() async {
    final apiResponse = await dio.get('/friend/request');

    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: FriendRequestResponse.fromJson,
    );
    if (response.success == true && response.data != null) {
      return response.data!;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return null;
  }

  Future<bool> postAddFriendRequest(String userId) async {
    final apiResponse = await dio.post(
      '/friend/add',
      data: {'targetId': userId},
    );
    final response = ApiHelper.tryParseApiResponse(response: apiResponse);
    if (response.success == true && response.code == 0) {
      return true;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return false;
  }

  Future<bool> postFriendTaskHandle(int requestId, bool operate) async {
    final apiResponse = await dio.post(
      '/friend/taskHandle',
      data: {
        'requestId': requestId,
        'operate': operate,
      },
    );
    final response = ApiHelper.tryParseApiResponse(response: apiResponse);
    if (response.success == true && response.code == 0) {
      return true;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return false;
  }

  Future<bool> postDeleteFriend(String targetId) async {
    final apiResponse = await dio.post(
      '/friend/delete',
      data: {
        'targetId': targetId,
      },
    );
    final response = ApiHelper.tryParseApiResponse(response: apiResponse);
    if (response.success == true && response.code == 0) {
      return true;
    } else {
      final errorMessage = ErrorHandler().translateErrorCode(response.code);
      if (errorMessage == null) {
        ErrorHandler().showErrorSnackBar(response.msg);
      } else {
        ErrorHandler().showErrorSnackBar(errorMessage);
      }
    }
    return false;
  }
}
