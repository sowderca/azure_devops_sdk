part of azure_devops_sdk.api;

class WebApiProjectCollectionRef {
  /* Collection Tfs Url (Host Url) */
  String collectionUrl = null;
  /* Collection Guid */
  String id = null;
  /* Collection Name */
  String name = null;
  /* Collection REST Url */
  String url = null;
  WebApiProjectCollectionRef();

  @override
  String toString() {
    return 'WebApiProjectCollectionRef[collectionUrl=$collectionUrl, id=$id, name=$name, url=$url, ]';
  }

  WebApiProjectCollectionRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collectionUrl'] == null) {
      collectionUrl = null;
    } else {
          collectionUrl = json['collectionUrl'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collectionUrl != null)
      json['collectionUrl'] = collectionUrl;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebApiProjectCollectionRef> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiProjectCollectionRef>() : json.map((value) => WebApiProjectCollectionRef.fromJson(value)).toList();
  }

  static Map<String, WebApiProjectCollectionRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiProjectCollectionRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiProjectCollectionRef.fromJson(value));
    }
    return map;
  }
}

