part of azure_devops_sdk.api;

class WebApiConnectedServiceDetails {
  
  String id = null;
  
  String url = null;
  WebApiConnectedServiceDetails();

  @override
  String toString() {
    return 'WebApiConnectedServiceDetails[id=$id, url=$url, ]';
  }

  WebApiConnectedServiceDetails.fromJson(Map<String, dynamic> json) {
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

  static List<WebApiConnectedServiceDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiConnectedServiceDetails>() : json.map((value) => WebApiConnectedServiceDetails.fromJson(value)).toList();
  }

  static Map<String, WebApiConnectedServiceDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiConnectedServiceDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiConnectedServiceDetails.fromJson(value));
    }
    return map;
  }
}

