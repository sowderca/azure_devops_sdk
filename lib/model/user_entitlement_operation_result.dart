part of azure_devops_sdk.api;

class UserEntitlementOperationResult {
  /* List of error codes paired with their corresponding error messages. */
  List<Object> errors = [];
  /* Success status of the operation. */
  bool isSuccess = null;
  
  UserEntitlement result = null;
  /* Identifier of the Member being acted upon. */
  String userId = null;
  UserEntitlementOperationResult();

  @override
  String toString() {
    return 'UserEntitlementOperationResult[errors=$errors, isSuccess=$isSuccess, result=$result, userId=$userId, ]';
  }

  UserEntitlementOperationResult.fromJson(Map<String, dynamic> json) {
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
    if (json['result'] == null) {
      result = null;
    } else {
      result = UserEntitlement.fromJson(json['result']);
    }
    if (json['userId'] == null) {
      userId = null;
    } else {
          userId = json['userId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    if (isSuccess != null)
      json['isSuccess'] = isSuccess;
    if (result != null)
      json['result'] = result;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<UserEntitlementOperationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<UserEntitlementOperationResult>() : json.map((value) => UserEntitlementOperationResult.fromJson(value)).toList();
  }

  static Map<String, UserEntitlementOperationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserEntitlementOperationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserEntitlementOperationResult.fromJson(value));
    }
    return map;
  }
}

