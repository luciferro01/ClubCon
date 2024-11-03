class Failure {
  final String? errorText;
  final String? message;
  final StackTrace? stackTrace;
  Failure({
    this.message,
    this.stackTrace,
    this.errorText,
  });
}
