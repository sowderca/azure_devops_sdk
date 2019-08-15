part of azure_devops_sdk.api;

class DependencyData {
  /* Gets or sets the category of dependency data. */
  String input = null;
  /* Gets or sets the key-value pair to specify properties and their values. */
  List<Object> map = [];
  DependencyData();

  @override
  String toString() {
    return 'DependencyData[input=$input, map=$map, ]';
  }

  DependencyData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['input'] == null) {
      input = null;
    } else {
          input = json['input'];
    }
    if (json['map'] == null) {
      map = null;
    } else {
      map = Object.listFromJson(json['map']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (input != null)
      json['input'] = input;
    if (map != null)
      json['map'] = map;
    return json;
  }

  static List<DependencyData> listFromJson(List<dynamic> json) {
    return json == null ? List<DependencyData>() : json.map((value) => DependencyData.fromJson(value)).toList();
  }

  static Map<String, DependencyData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DependencyData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DependencyData.fromJson(value));
    }
    return map;
  }
}

