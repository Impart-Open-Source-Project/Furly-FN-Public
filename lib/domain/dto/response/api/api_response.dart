class ApiResponse<T> {
  bool success;
  int code;
  String msg;
  T? data;

  ApiResponse({
    required this.success,
    required this.code,
    this.msg = '',
    required this.data,
  });
}
