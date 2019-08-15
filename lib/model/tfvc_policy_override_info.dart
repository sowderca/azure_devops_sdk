part of azure_devops_sdk.api;

class TfvcPolicyOverrideInfo {
  
  String comment = null;
  
  List<TfvcPolicyFailureInfo> policyFailures = [];
  TfvcPolicyOverrideInfo();

  @override
  String toString() {
    return 'TfvcPolicyOverrideInfo[comment=$comment, policyFailures=$policyFailures, ]';
  }

  TfvcPolicyOverrideInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['policyFailures'] == null) {
      policyFailures = null;
    } else {
      policyFailures = TfvcPolicyFailureInfo.listFromJson(json['policyFailures']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (policyFailures != null)
      json['policyFailures'] = policyFailures;
    return json;
  }

  static List<TfvcPolicyOverrideInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcPolicyOverrideInfo>() : json.map((value) => TfvcPolicyOverrideInfo.fromJson(value)).toList();
  }

  static Map<String, TfvcPolicyOverrideInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcPolicyOverrideInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcPolicyOverrideInfo.fromJson(value));
    }
    return map;
  }
}

