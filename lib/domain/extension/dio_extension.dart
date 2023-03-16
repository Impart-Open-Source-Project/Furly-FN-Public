import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/api_adapter_provider.dart';

extension DioExtension on AutoDisposeNotifierProviderRef {
  Dio get dio => watch(apiAdapterProvider);
}
