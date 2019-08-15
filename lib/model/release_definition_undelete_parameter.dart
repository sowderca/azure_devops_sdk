part of azure_devops_sdk.api;

class ReleaseDefinitionUndeleteParameter {
  /* Gets or sets comment. */
  String comment = null;
  ReleaseDefinitionUndeleteParameter();

  @override
  String toString() {
    return 'ReleaseDefinitionUndeleteParameter[comment=$comment, ]';
  }

  ReleaseDefinitionUndeleteParameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    return json;
  }

  static List<ReleaseDefinitionUndeleteParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionUndeleteParameter>() : json.map((value) => ReleaseDefinitionUndeleteParameter.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionUndeleteParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionUndeleteParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionUndeleteParameter.fromJson(value));
    }
    return map;
  }
}

