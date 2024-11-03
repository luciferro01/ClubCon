class ApiResponse<T> {
  final int statusCode;
  final String message;
  final String responseType;
  final T data;

  ApiResponse({
    required this.statusCode,
    required this.message,
    required this.responseType,
    required this.data,
  });

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return ApiResponse(
      statusCode: json['statusCode'],
      message: json['message'],
      responseType: json['responseType'],
      data: fromJsonT(json['data']),
    );
  }
}
