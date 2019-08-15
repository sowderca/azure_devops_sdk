part of azure_devops_sdk.api;

class UserEntitlementsResponseBase {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  UserEntitlement userEntitlement = null;
  UserEntitlementsResponseBase();

  @override
  String toString() {
    return 'UserEntitlementsResponseBase[isSuccess=$isSuccess, userEntitlement=$userEntitlement, ]';
  }

  UserEntitlementsResponseBase.fromJson(Map<String, dynamic> json) {
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

  static List<UserEntitlementsResponseBase> listFromJson(List<dynamic> json) {
    return json == null ? List<UserEntitlementsResponseBase>() : json.map((value) => UserEntitlementsResponseBase.fromJson(value)).toList();
  }

  static Map<String, UserEntitlementsResponseBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserEntitlementsResponseBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserEntitlementsResponseBase.fromJson(value));
    }
    return map;
  }
}

