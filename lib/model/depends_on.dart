part of azure_devops_sdk.api;

class DependsOn {
  /* Gets or sets the ID of the field on which URL's value is dependent. */
  String input = null;
  /* Gets or sets key-value pair containing other's field value and corresponding url value. */
  List<DependencyBinding> map = [];
  DependsOn();

  @override
  String toString() {
    return 'DependsOn[input=$input, map=$map, ]';
  }

  DependsOn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['input'] == null) {
      input = null;
    } else {
          input = json['input'];
    }
    if (json['map'] == null) {
      map = null;
    } else {
      map = DependencyBinding.listFromJson(json['map']);
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

  static List<DependsOn> listFromJson(List<dynamic> json) {
    return json == null ? List<DependsOn>() : json.map((value) => DependsOn.fromJson(value)).toList();
  }

  static Map<String, DependsOn> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DependsOn>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DependsOn.fromJson(value));
    }
    return map;
  }
}

