part of azure_devops_sdk.api;

class GraphUser {
  
  ReferenceLinks links = null;
  /* The descriptor is the primary way to reference the graph subject while the system is running. This field will uniquely identify the same graph subject across both Accounts and Organizations. */
  String descriptor = null;
  /* This is the non-unique display name of the graph subject. To change this field, you must alter its value in the source provider. */
  String displayName = null;
  /* This url is the full route to the source resource of this graph subject. */
  String url = null;
  GraphUser();

  @override
  String toString() {
    return 'GraphUser[links=$links, descriptor=$descriptor, displayName=$displayName, url=$url, ]';
  }

  GraphUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
          descriptor = json['descriptor'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (descriptor != null)
      json['descriptor'] = descriptor;
    if (displayName != null)
      json['displayName'] = displayName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GraphUser> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUser>() : json.map((value) => GraphUser.fromJson(value)).toList();
  }

  static Map<String, GraphUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUser.fromJson(value));
    }
    return map;
  }
}

