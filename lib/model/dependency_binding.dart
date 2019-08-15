part of azure_devops_sdk.api;

class DependencyBinding {
  /* Gets or sets the value of the field on which url is dependent. */
  String key = null;
  /* Gets or sets the corresponding value of url. */
  String value = null;
  DependencyBinding();

  @override
  String toString() {
    return 'DependencyBinding[key=$key, value=$value, ]';
  }

  DependencyBinding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['key'] == null) {
      key = null;
    } else {
          key = json['key'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<DependencyBinding> listFromJson(List<dynamic> json) {
    return json == null ? List<DependencyBinding>() : json.map((value) => DependencyBinding.fromJson(value)).toList();
  }

  static Map<String, DependencyBinding> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DependencyBinding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DependencyBinding.fromJson(value));
    }
    return map;
  }
}

