part of azure_devops_sdk.api;

class PropertyBag {
  /* Generic store for test session data */
  Map<String, String> bag = {};
  PropertyBag();

  @override
  String toString() {
    return 'PropertyBag[bag=$bag, ]';
  }

  PropertyBag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bag'] == null) {
      bag = null;
    } else {
          bag = (json['bag'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bag != null)
      json['bag'] = bag;
    return json;
  }

  static List<PropertyBag> listFromJson(List<dynamic> json) {
    return json == null ? List<PropertyBag>() : json.map((value) => PropertyBag.fromJson(value)).toList();
  }

  static Map<String, PropertyBag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PropertyBag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PropertyBag.fromJson(value));
    }
    return map;
  }
}

