part of azure_devops_sdk.api;

class ProcessReference {
  
  String name = null;
  
  String url = null;
  ProcessReference();

  @override
  String toString() {
    return 'ProcessReference[name=$name, url=$url, ]';
  }

  ProcessReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessReference>() : json.map((value) => ProcessReference.fromJson(value)).toList();
  }

  static Map<String, ProcessReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessReference.fromJson(value));
    }
    return map;
  }
}

