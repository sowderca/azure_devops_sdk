part of azure_devops_sdk.api;

class WikiCreateParameters {
  /* Wiki name. */
  String name = null;
  /* ID of the project in which the wiki is to be created. */
  String projectId = null;
  WikiCreateParameters();

  @override
  String toString() {
    return 'WikiCreateParameters[name=$name, projectId=$projectId, ]';
  }

  WikiCreateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<WikiCreateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiCreateParameters>() : json.map((value) => WikiCreateParameters.fromJson(value)).toList();
  }

  static Map<String, WikiCreateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiCreateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiCreateParameters.fromJson(value));
    }
    return map;
  }
}

