part of azure_devops_sdk.api;

class MemberEntitlementsPatchResponse {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  MemberEntitlement memberEntitlement = null;
  MemberEntitlementsPatchResponse();

  @override
  String toString() {
    return 'MemberEntitlementsPatchResponse[isSuccess=$isSuccess, memberEntitlement=$memberEntitlement, ]';
  }

  MemberEntitlementsPatchResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MemberEntitlementsPatchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEntitlementsPatchResponse>() : json.map((value) => MemberEntitlementsPatchResponse.fromJson(value)).toList();
  }

  static Map<String, MemberEntitlementsPatchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEntitlementsPatchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEntitlementsPatchResponse.fromJson(value));
    }
    return map;
  }
}

