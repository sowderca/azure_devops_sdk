part of azure_devops_sdk.api;

class WebApiConnectedService {
  
  String id = null;
  
  String url = null;
  WebApiConnectedService();

  @override
  String toString() {
    return 'WebApiConnectedService[id=$id, url=$url, ]';
  }

  WebApiConnectedService.fromJson(Map<String, dynamic> json) {
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

  static List<WebApiConnectedService> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiConnectedService>() : json.map((value) => WebApiConnectedService.fromJson(value)).toList();
  }

  static Map<String, WebApiConnectedService> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiConnectedService>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiConnectedService.fromJson(value));
    }
    return map;
  }
}

