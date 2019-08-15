part of azure_devops_sdk.api;

class DataProviderExceptionDetails {
  /* The type of the exception that was thrown. */
  String exceptionType = null;
  /* Message that is associated with the exception. */
  String message = null;
  /* The StackTrace from the exception turned into a string. */
  String stackTrace = null;
  DataProviderExceptionDetails();

  @override
  String toString() {
    return 'DataProviderExceptionDetails[exceptionType=$exceptionType, message=$message, stackTrace=$stackTrace, ]';
  }

  DataProviderExceptionDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['exceptionType'] == null) {
      exceptionType = null;
    } else {
          exceptionType = json['exceptionType'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
          stackTrace = json['stackTrace'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exceptionType != null)
      json['exceptionType'] = exceptionType;
    if (message != null)
      json['message'] = message;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    return json;
  }

  static List<DataProviderExceptionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<DataProviderExceptionDetails>() : json.map((value) => DataProviderExceptionDetails.fromJson(value)).toList();
  }

  static Map<String, DataProviderExceptionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataProviderExceptionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataProviderExceptionDetails.fromJson(value));
    }
    return map;
  }
}

