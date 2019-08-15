part of azure_devops_sdk.api;

class FieldDependentRule {
  
  String url = null;
  FieldDependentRule();

  @override
  String toString() {
    return 'FieldDependentRule[url=$url, ]';
  }

  FieldDependentRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<FieldDependentRule> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldDependentRule>() : json.map((value) => FieldDependentRule.fromJson(value)).toList();
  }

  static Map<String, FieldDependentRule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldDependentRule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldDependentRule.fromJson(value));
    }
    return map;
  }
}

