part of azure_devops_sdk.api;

class WebApiCreateTagRequestData {
  /* Name of the tag definition that will be created. */
  String name = null;
  WebApiCreateTagRequestData();

  @override
  String toString() {
    return 'WebApiCreateTagRequestData[name=$name, ]';
  }

  WebApiCreateTagRequestData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<WebApiCreateTagRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiCreateTagRequestData>() : json.map((value) => WebApiCreateTagRequestData.fromJson(value)).toList();
  }

  static Map<String, WebApiCreateTagRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiCreateTagRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiCreateTagRequestData.fromJson(value));
    }
    return map;
  }
}

