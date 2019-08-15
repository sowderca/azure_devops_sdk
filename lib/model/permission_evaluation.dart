part of azure_devops_sdk.api;

class PermissionEvaluation {
  /* Permission bit for this evaluated permission. */
  int permissions = null;
  /* Security namespace identifier for this evaluated permission. */
  String securityNamespaceId = null;
  /* Security namespace-specific token for this evaluated permission. */
  String token = null;
  /* Permission evaluation value. */
  bool value = null;
  PermissionEvaluation();

  @override
  String toString() {
    return 'PermissionEvaluation[permissions=$permissions, securityNamespaceId=$securityNamespaceId, token=$token, value=$value, ]';
  }

  PermissionEvaluation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['permissions'] == null) {
      permissions = null;
    } else {
          permissions = json['permissions'];
    }
    if (json['securityNamespaceId'] == null) {
      securityNamespaceId = null;
    } else {
          securityNamespaceId = json['securityNamespaceId'];
    }
    if (json['token'] == null) {
      token = null;
    } else {
          token = json['token'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (permissions != null)
      json['permissions'] = permissions;
    if (securityNamespaceId != null)
      json['securityNamespaceId'] = securityNamespaceId;
    if (token != null)
      json['token'] = token;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<PermissionEvaluation> listFromJson(List<dynamic> json) {
    return json == null ? List<PermissionEvaluation>() : json.map((value) => PermissionEvaluation.fromJson(value)).toList();
  }

  static Map<String, PermissionEvaluation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PermissionEvaluation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PermissionEvaluation.fromJson(value));
    }
    return map;
  }
}

