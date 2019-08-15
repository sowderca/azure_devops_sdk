part of azure_devops_sdk.api;

class ResourceRef {
  
  String id = null;
  
  String url = null;
  ResourceRef();

  @override
  String toString() {
    return 'ResourceRef[id=$id, url=$url, ]';
  }

  ResourceRef.fromJson(Map<String, dynamic> json) {
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

  static List<ResourceRef> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceRef>() : json.map((value) => ResourceRef.fromJson(value)).toList();
  }

  static Map<String, ResourceRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceRef.fromJson(value));
    }
    return map;
  }
}

