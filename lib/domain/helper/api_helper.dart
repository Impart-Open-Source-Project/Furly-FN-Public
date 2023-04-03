import 'package:dio/dio.dart';

import '../../utils/error_handle_util.dart';
import '../dto/response/api/api_response.dart';
import '../dto/response/api/base_api_response.dart';

class ApiHelper {
  static ApiResponse<T> tryParseApiResponse<T>({
    required Response response,
    T Function(Map<String, Object?> json)? fromJson,
  }) {
    switch (response.statusCode) {
      case 200:
        final baseResponse = BaseApiResponse.fromJson(response.data);
        return ApiResponse(
          success: baseResponse.code == 0 ? true : false,
          code: baseResponse.code ?? 1,
          msg: baseResponse.msg ?? '',
          data: (fromJson == null || baseResponse.data == null)
              ? null
              : fromJson(baseResponse.data),
        );
      default:
        ErrorHandler().showErrorSnackBar('Network Error!');
        return ApiResponse(
          success: false,
          code: 1,
          msg: 'http request failed',
          data: null,
        );
    }
  }
}
