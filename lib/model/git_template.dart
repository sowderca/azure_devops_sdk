part of azure_devops_sdk.api;

class GitTemplate {
  /* Name of the Template */
  String name = null;
  /* Type of the Template */
  String type = null;
  GitTemplate();

  @override
  String toString() {
    return 'GitTemplate[name=$name, type=$type, ]';
  }

  GitTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<GitTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTemplate>() : json.map((value) => GitTemplate.fromJson(value)).toList();
  }

  static Map<String, GitTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTemplate.fromJson(value));
    }
    return map;
  }
}

