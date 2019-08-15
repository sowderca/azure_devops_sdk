part of azure_devops_sdk.api;

class BaseOperationResult {
  /* List of error codes paired with their corresponding error messages */
  List<Object> errors = [];
  /* Success status of the operation */
  bool isSuccess = null;
  BaseOperationResult();

  @override
  String toString() {
    return 'BaseOperationResult[errors=$errors, isSuccess=$isSuccess, ]';
  }

  BaseOperationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['errors'] == null) {
      errors = null;
    } else {
      errors = Object.listFromJson(json['errors']);
    }
    if (json['isSuccess'] == null) {
      isSuccess = null;
    } else {
          isSuccess = json['isSuccess'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    if (isSuccess != null)
      json['isSuccess'] = isSuccess;
    return json;
  }

  static List<BaseOperationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<BaseOperationResult>() : json.map((value) => BaseOperationResult.fromJson(value)).toList();
  }

  static Map<String, BaseOperationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BaseOperationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BaseOperationResult.fromJson(value));
    }
    return map;
  }
}

