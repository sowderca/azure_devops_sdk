part of azure_devops_sdk.api;

class MemberEntitlementsPostResponse {
  /* True if all operations were successful. */
  bool isSuccess = null;
  
  MemberEntitlement memberEntitlement = null;
  MemberEntitlementsPostResponse();

  @override
  String toString() {
    return 'MemberEntitlementsPostResponse[isSuccess=$isSuccess, memberEntitlement=$memberEntitlement, ]';
  }

  MemberEntitlementsPostResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MemberEntitlementsPostResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEntitlementsPostResponse>() : json.map((value) => MemberEntitlementsPostResponse.fromJson(value)).toList();
  }

  static Map<String, MemberEntitlementsPostResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEntitlementsPostResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEntitlementsPostResponse.fromJson(value));
    }
    return map;
  }
}

