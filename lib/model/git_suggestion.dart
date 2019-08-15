part of azure_devops_sdk.api;

class GitSuggestion {
  /* Specific properties describing the suggestion. */
  Map<String, Object> properties = {};
  /* The type of suggestion (e.g. pull request). */
  String type = null;
  GitSuggestion();

  @override
  String toString() {
    return 'GitSuggestion[properties=$properties, type=$type, ]';
  }

  GitSuggestion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = Object.mapFromJson(json['properties']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (properties != null)
      json['properties'] = properties;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<GitSuggestion> listFromJson(List<dynamic> json) {
    return json == null ? List<GitSuggestion>() : json.map((value) => GitSuggestion.fromJson(value)).toList();
  }

  static Map<String, GitSuggestion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitSuggestion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitSuggestion.fromJson(value));
    }
    return map;
  }
}

