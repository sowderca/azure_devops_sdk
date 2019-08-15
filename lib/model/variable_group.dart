part of azure_devops_sdk.api;

class VariableGroup {
  /* The Name of the variable group. */
  String alias = null;
  /* The ID of the variable group. */
  int id = null;
  VariableGroup();

  @override
  String toString() {
    return 'VariableGroup[alias=$alias, id=$id, ]';
  }

  VariableGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<VariableGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableGroup>() : json.map((value) => VariableGroup.fromJson(value)).toList();
  }

  static Map<String, VariableGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableGroup.fromJson(value));
    }
    return map;
  }
}

