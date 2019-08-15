part of azure_devops_sdk.api;

class OperatorConstraint {
  
  String operator_ = null;
  /* Gets or sets the list of scopes that this type supports. */
  List<String> supportedScopes = [];
  OperatorConstraint();

  @override
  String toString() {
    return 'OperatorConstraint[operator_=$operator_, supportedScopes=$supportedScopes, ]';
  }

  OperatorConstraint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operator'] == null) {
      operator_ = null;
    } else {
          operator_ = json['operator'];
    }
    if (json['supportedScopes'] == null) {
      supportedScopes = null;
    } else {
      supportedScopes = (json['supportedScopes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (operator_ != null)
      json['operator'] = operator_;
    if (supportedScopes != null)
      json['supportedScopes'] = supportedScopes;
    return json;
  }

  static List<OperatorConstraint> listFromJson(List<dynamic> json) {
    return json == null ? List<OperatorConstraint>() : json.map((value) => OperatorConstraint.fromJson(value)).toList();
  }

  static Map<String, OperatorConstraint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperatorConstraint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperatorConstraint.fromJson(value));
    }
    return map;
  }
}

