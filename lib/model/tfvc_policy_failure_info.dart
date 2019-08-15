part of azure_devops_sdk.api;

class TfvcPolicyFailureInfo {
  
  String message = null;
  
  String policyName = null;
  TfvcPolicyFailureInfo();

  @override
  String toString() {
    return 'TfvcPolicyFailureInfo[message=$message, policyName=$policyName, ]';
  }

  TfvcPolicyFailureInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['policyName'] == null) {
      policyName = null;
    } else {
          policyName = json['policyName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (policyName != null)
      json['policyName'] = policyName;
    return json;
  }

  static List<TfvcPolicyFailureInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcPolicyFailureInfo>() : json.map((value) => TfvcPolicyFailureInfo.fromJson(value)).toList();
  }

  static Map<String, TfvcPolicyFailureInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcPolicyFailureInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcPolicyFailureInfo.fromJson(value));
    }
    return map;
  }
}

