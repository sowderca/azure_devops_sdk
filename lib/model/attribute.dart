part of azure_devops_sdk.api;

class Attribute {
  Attribute();

  @override
  String toString() {
    return 'Attribute[]';
  }

  Attribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<Attribute> listFromJson(List<dynamic> json) {
    return json == null ? List<Attribute>() : json.map((value) => Attribute.fromJson(value)).toList();
  }

  static Map<String, Attribute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Attribute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Attribute.fromJson(value));
    }
    return map;
  }
}

