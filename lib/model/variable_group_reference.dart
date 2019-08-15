part of azure_devops_sdk.api;

class VariableGroupReference {
  /* The Name of the variable group. */
  String alias = null;
  /* The ID of the variable group. */
  int id = null;
  VariableGroupReference();

  @override
  String toString() {
    return 'VariableGroupReference[alias=$alias, id=$id, ]';
  }

  VariableGroupReference.fromJson(Map<String, dynamic> json) {
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

  static List<VariableGroupReference> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableGroupReference>() : json.map((value) => VariableGroupReference.fromJson(value)).toList();
  }

  static Map<String, VariableGroupReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableGroupReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableGroupReference.fromJson(value));
    }
    return map;
  }
}

