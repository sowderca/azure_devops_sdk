part of azure_devops_sdk.api;

class UserEntitlementsPostResponse {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  UserEntitlement userEntitlement = null;
  UserEntitlementsPostResponse();

  @override
  String toString() {
    return 'UserEntitlementsPostResponse[isSuccess=$isSuccess, userEntitlement=$userEntitlement, ]';
  }

  UserEntitlementsPostResponse.fromJson(Map<String, dynamic> json) {
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

  static List<UserEntitlementsPostResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UserEntitlementsPostResponse>() : json.map((value) => UserEntitlementsPostResponse.fromJson(value)).toList();
  }

  static Map<String, UserEntitlementsPostResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserEntitlementsPostResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserEntitlementsPostResponse.fromJson(value));
    }
    return map;
  }
}

