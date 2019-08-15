part of azure_devops_sdk.api;

class BuildRequestValidationResult {
  /* The message associated with the result. */
  String message = null;
  /* The result. */
  String result = null;
  //enum resultEnum {  ok,  warning,  error,  };{
  BuildRequestValidationResult();

  @override
  String toString() {
    return 'BuildRequestValidationResult[message=$message, result=$result, ]';
  }

  BuildRequestValidationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (result != null)
      json['result'] = result;
    return json;
  }

  static List<BuildRequestValidationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildRequestValidationResult>() : json.map((value) => BuildRequestValidationResult.fromJson(value)).toList();
  }

  static Map<String, BuildRequestValidationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildRequestValidationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildRequestValidationResult.fromJson(value));
    }
    return map;
  }
}

