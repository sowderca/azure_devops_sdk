part of azure_devops_sdk.api;

class ExtensionEventCallback {
  /* The uri of the endpoint that is hit when an event occurs */
  String uri = null;
  ExtensionEventCallback();

  @override
  String toString() {
    return 'ExtensionEventCallback[uri=$uri, ]';
  }

  ExtensionEventCallback.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (uri != null)
      json['uri'] = uri;
    return json;
  }

  static List<ExtensionEventCallback> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionEventCallback>() : json.map((value) => ExtensionEventCallback.fromJson(value)).toList();
  }

  static Map<String, ExtensionEventCallback> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionEventCallback>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionEventCallback.fromJson(value));
    }
    return map;
  }
}

