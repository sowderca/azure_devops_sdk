part of azure_devops_sdk.api;

class JObject {
  
  String item = null;
  /* Gets the node type for this JToken. */
  String type = null;
  JObject();

  @override
  String toString() {
    return 'JObject[item=$item, type=$type, ]';
  }

  JObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['item'] == null) {
      item = null;
    } else {
          item = json['item'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (item != null)
      json['item'] = item;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<JObject> listFromJson(List<dynamic> json) {
    return json == null ? List<JObject>() : json.map((value) => JObject.fromJson(value)).toList();
  }

  static Map<String, JObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JObject.fromJson(value));
    }
    return map;
  }
}

