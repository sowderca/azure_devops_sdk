part of azure_devops_sdk.api;

class UserEntitlementsPatchResponse {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  UserEntitlement userEntitlement = null;
  UserEntitlementsPatchResponse();

  @override
  String toString() {
    return 'UserEntitlementsPatchResponse[isSuccess=$isSuccess, userEntitlement=$userEntitlement, ]';
  }

  UserEntitlementsPatchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isSuccess'] == null) {
      isSuccess = null;
    } else {
          isSuccess = json['isSuccess'];
    }
    if (json['userEntitlement'] == null) {
      userEntitlement = null;
    } else {
      userEntitlement = UserEntitlement.fromJson(json['userEntitlement']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSuccess != null)
      json['isSuccess'] = isSuccess;
    if (userEntitlement != null)
      json['userEntitlement'] = userEntitlement;
    return json;
  }

  static List<UserEntitlementsPatchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UserEntitlementsPatchResponse>() : json.map((value) => UserEntitlementsPatchResponse.fromJson(value)).toList();
  }

  static Map<String, UserEntitlementsPatchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserEntitlementsPatchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserEntitlementsPatchResponse.fromJson(value));
    }
    return map;
  }
}

