class UnauthorizedExeption implements Exception {
  final String message;

  UnauthorizedExeption({
    required this.message,
  });
}
