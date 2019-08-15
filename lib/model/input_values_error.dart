part of azure_devops_sdk.api;

class InputValuesError {
  /* The error message. */
  String message = null;
  InputValuesError();

  @override
  String toString() {
    return 'InputValuesError[message=$message, ]';
  }

  InputValuesError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<InputValuesError> listFromJson(List<dynamic> json) {
    return json == null ? List<InputValuesError>() : json.map((value) => InputValuesError.fromJson(value)).toList();
  }

  static Map<String, InputValuesError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputValuesError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputValuesError.fromJson(value));
    }
    return map;
  }
}

