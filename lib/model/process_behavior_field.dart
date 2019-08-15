part of azure_devops_sdk.api;

class ProcessBehaviorField {
  /* Name of the field. */
  String name = null;
  /* Reference name of the field. */
  String referenceName = null;
  /* Url to field. */
  String url = null;
  ProcessBehaviorField();

  @override
  String toString() {
    return 'ProcessBehaviorField[name=$name, referenceName=$referenceName, url=$url, ]';
  }

  ProcessBehaviorField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessBehaviorField> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessBehaviorField>() : json.map((value) => ProcessBehaviorField.fromJson(value)).toList();
  }

  static Map<String, ProcessBehaviorField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessBehaviorField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessBehaviorField.fromJson(value));
    }
    return map;
  }
}

