part of azure_devops_sdk.api;

class OperationResult {
  /* List of error codes paired with their corresponding error messages. */
  List<Object> errors = [];
  /* Success status of the operation. */
  bool isSuccess = null;
  /* Identifier of the Member being acted upon. */
  String memberId = null;
  
  MemberEntitlement result = null;
  OperationResult();

  @override
  String toString() {
    return 'OperationResult[errors=$errors, isSuccess=$isSuccess, memberId=$memberId, result=$result, ]';
  }

  OperationResult.fromJson(Map<String, dynamic> json) {
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
    if (json['memberId'] == null) {
      memberId = null;
    } else {
          memberId = json['memberId'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
      result = MemberEntitlement.fromJson(json['result']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    if (isSuccess != null)
      json['isSuccess'] = isSuccess;
    if (memberId != null)
      json['memberId'] = memberId;
    if (result != null)
      json['result'] = result;
    return json;
  }

  static List<OperationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<OperationResult>() : json.map((value) => OperationResult.fromJson(value)).toList();
  }

  static Map<String, OperationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationResult.fromJson(value));
    }
    return map;
  }
}

