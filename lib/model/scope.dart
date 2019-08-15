part of azure_devops_sdk.api;

class Scope {
  
  String description = null;
  
  String title = null;
  
  String value = null;
  Scope();

  @override
  String toString() {
    return 'Scope[description=$description, title=$title, value=$value, ]';
  }

  Scope.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (title != null)
      json['title'] = title;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<Scope> listFromJson(List<dynamic> json) {
    return json == null ? List<Scope>() : json.map((value) => Scope.fromJson(value)).toList();
  }

  static Map<String, Scope> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Scope>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Scope.fromJson(value));
    }
    return map;
  }
}

