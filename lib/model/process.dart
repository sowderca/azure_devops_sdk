part of azure_devops_sdk.api;

class Process {
  
  String name = null;
  
  String url = null;
  Process();

  @override
  String toString() {
    return 'Process[name=$name, url=$url, ]';
  }

  Process.fromJson(Map<String, dynamic> json) {
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

  static List<Process> listFromJson(List<dynamic> json) {
    return json == null ? List<Process>() : json.map((value) => Process.fromJson(value)).toList();
  }

  static Map<String, Process> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Process>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Process.fromJson(value));
    }
    return map;
  }
}

