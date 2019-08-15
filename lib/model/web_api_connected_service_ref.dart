part of azure_devops_sdk.api;

class WebApiConnectedServiceRef {
  
  String id = null;
  
  String url = null;
  WebApiConnectedServiceRef();

  @override
  String toString() {
    return 'WebApiConnectedServiceRef[id=$id, url=$url, ]';
  }

  WebApiConnectedServiceRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebApiConnectedServiceRef> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiConnectedServiceRef>() : json.map((value) => WebApiConnectedServiceRef.fromJson(value)).toList();
  }

  static Map<String, WebApiConnectedServiceRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiConnectedServiceRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiConnectedServiceRef.fromJson(value));
    }
    return map;
  }
}

