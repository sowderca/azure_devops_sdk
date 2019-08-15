part of azure_devops_sdk.api;

class Deployment {
  
  String type = null;
  Deployment();

  @override
  String toString() {
    return 'Deployment[type=$type, ]';
  }

  Deployment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Deployment> listFromJson(List<dynamic> json) {
    return json == null ? List<Deployment>() : json.map((value) => Deployment.fromJson(value)).toList();
  }

  static Map<String, Deployment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Deployment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Deployment.fromJson(value));
    }
    return map;
  }
}

