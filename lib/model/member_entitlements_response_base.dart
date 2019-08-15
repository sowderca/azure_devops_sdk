part of azure_devops_sdk.api;

class MemberEntitlementsResponseBase {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  MemberEntitlement memberEntitlement = null;
  MemberEntitlementsResponseBase();

  @override
  String toString() {
    return 'MemberEntitlementsResponseBase[isSuccess=$isSuccess, memberEntitlement=$memberEntitlement, ]';
  }

  MemberEntitlementsResponseBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isSuccess'] == null) {
      isSuccess = null;
    } else {
          isSuccess = json['isSuccess'];
    }
    if (json['memberEntitlement'] == null) {
      memberEntitlement = null;
    } else {
      memberEntitlement = MemberEntitlement.fromJson(json['memberEntitlement']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSuccess != null)
      json['isSuccess'] = isSuccess;
    if (memberEntitlement != null)
      json['memberEntitlement'] = memberEntitlement;
    return json;
  }

  static List<MemberEntitlementsResponseBase> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEntitlementsResponseBase>() : json.map((value) => MemberEntitlementsResponseBase.fromJson(value)).toList();
  }

  static Map<String, MemberEntitlementsResponseBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEntitlementsResponseBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEntitlementsResponseBase.fromJson(value));
    }
    return map;
  }
}

