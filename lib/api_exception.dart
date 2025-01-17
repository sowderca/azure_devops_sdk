part of azure_devops_sdk.api;

class ApiException implements Exception {
  int code = 0;
  String message;
  Exception innerException;
  StackTrace stackTrace;

  ApiException(this.code, this.message);

  ApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  String toString() {
    if (message == null) return "ApiException";

    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: $innerException)\n\n" +
        stackTrace.toString();
  }
}
