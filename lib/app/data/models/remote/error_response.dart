class ErrorResponse {
  final String code;
  final String message;

  ErrorResponse({required this.code, required this.message});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      ErrorResponse(code: json['code'], message: json['message']);
}
