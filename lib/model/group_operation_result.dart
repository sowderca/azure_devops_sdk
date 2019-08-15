part of azure_devops_sdk.api;

class GroupOperationResult {
  /* List of error codes paired with their corresponding error messages */
  List<Object> errors = [];
  /* Success status of the operation */
  bool isSuccess = null;
  GroupOperationResult();

  @override
  String toString() {
    return 'GroupOperationResult[errors=$errors, isSuccess=$isSuccess, ]';
  }

  GroupOperationResult.fromJson(Map<String, dynamic> json) {
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

  static List<GroupOperationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupOperationResult>() : json.map((value) => GroupOperationResult.fromJson(value)).toList();
  }

  static Map<String, GroupOperationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupOperationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupOperationResult.fromJson(value));
    }
    return map;
  }
}

